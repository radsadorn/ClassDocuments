import creational.BookMetadataFormatter;
import creational.CSVBookMetadataFormatter;
import creational.TestData;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CSVBookMetadataFormatterTest {
    private Path workingDir;

    @Before
    public void init() {
        this.workingDir = Path.of("", "src/test/resources");
    }

    @Test
    public void test101() throws IOException {
        Path file = this.workingDir.resolve("test101.csv");
        String expected = Files.readString(file);
        BookMetadataFormatter bookMetadataFormatter = new CSVBookMetadataFormatter();
        bookMetadataFormatter.append(TestData.sailboatBook);
        String actual = bookMetadataFormatter.getMetadataString();
        assertEquals(expected.strip(), actual.strip());
    }

    @Test
    public void test102() throws IOException {
        Path file = this.workingDir.resolve("test102.csv");
        String expected = Files.readString(file);
        BookMetadataFormatter bookMetadataFormatter = new CSVBookMetadataFormatter();
        bookMetadataFormatter.append(TestData.GoFBook);
        String actual = bookMetadataFormatter.getMetadataString();
        assertEquals(expected.strip(), actual.strip());
    }

    @Test
    public void test103() throws IOException {
        Path file = this.workingDir.resolve("test103.csv");
        String expected = Files.readString(file);
        BookMetadataFormatter bookMetadataFormatter = new CSVBookMetadataFormatter();
        bookMetadataFormatter.append(TestData.dragonBook);
        bookMetadataFormatter.append(TestData.dinosaurBook);
        String actual = bookMetadataFormatter.getMetadataString();
        assertEquals(expected.strip(), actual.strip());
    }
}
