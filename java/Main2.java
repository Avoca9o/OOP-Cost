import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

public class Main2
{
	public static void main(String[] args) {
		long start = System.currentTimeMillis();

		for (int i = 0; i < 100000000; i++) {
			Base base = new Base();
		}

		long finish = System.currentTimeMillis();

        long elapsed = finish - start;

        try (FileWriter writer = new FileWriter("output.txt", true)) {
            writer.write(elapsed + "\n");
        } catch (IOException e) {
            e.printStackTrace();
        }
	}
}
