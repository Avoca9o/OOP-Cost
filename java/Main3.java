public class Main3
{
	public static void main(String[] args) {
		Base base = new Derived();
        for (int i = 0; i < 100000000; i++) {
            base.DoSomething();
		}
	}
}