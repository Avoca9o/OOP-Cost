import java.nio.file.Files
import java.nio.file.Paths
import java.nio.file.StandardOpenOption
import kotlin.system.measureTimeMillis

open class Base() {
    open fun doNothing() {}
}

class Derived() : Base() {
    override fun doNothing() {}
}

fun main() {
    val obj : Base = Derived()
    
    val elapsed = measureTimeMillis {
        for (i in 0..100000000) {
            obj.doNothing()
        }
    }
    val result = "$elapsed \n"
    val fout = Paths.get("output.txt")

    Files.write(
        fout,
        result.toByteArray(),
        StandardOpenOption.CREATE,
        StandardOpenOption.APPEND
    )
}
