import java.nio.file.Files
import java.nio.file.Paths
import java.nio.file.StandardOpenOption
import kotlin.system.measureTimeMillis

class Base() {}

fun main() {
    val elapsed = measureTimeMillis {
        for (i in 0..100000000) {
            Base()
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
