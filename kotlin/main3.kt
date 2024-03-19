open class Base() {
    open fun doNothing() {}
}

class Derived() : Base() {
    override fun doNothing() {}
}

fun main() {
    val obj : Base = Derived()
    for (i in 0..100000000) {
        obj.doNothing()
    }
}
