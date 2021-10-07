import creational.BookMetadataFormatter;
import creational.TestData;
import creational.XMLBookMetadataFormatter;
import org.junit.Before;
import org.junit.Test;

import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class XMLBookMetadataFormatterTest {
    private Path workingDir;

    @Before
    public void init() {
        this.workingDir = Path.of("", "src/test/resources");
    }

    @Test
    public void test101() throws ParserConfigurationException, IOException {
        Path file = this.workingDir.resolve("test101.xml");
        String expected = Files.readString(file);
        BookMetadataFormatter bookMetadataFormatter = new XMLBookMetadataFormatter();
        bookMetadataFormatter.append(TestData.sailboatBook);
        String actual = bookMetadataFormatter.getMetadataString();
        assertEquals(expected.strip(), actual.strip());
    }

    @Test
    public void test102() throws ParserConfigurationException, IOException {
        Path file = this.workingDir.resolve("test102.xml");
        String expected = Files.readString(file);
        BookMetadataFormatter bookMetadataFormatter = new XMLBookMetadataFormatter();
        bookMetadataFormatter.append(TestData.GoFBook);
        String actual = bookMetadataFormatter.getMetadataString();
        assertEquals(expected.strip(), actual.strip());
    }

    @Test
    public void test103() throws ParserConfigurationException, IOException {
        Path file = this.workingDir.resolve("test103.xml");
        String expected = Files.readString(file);
        BookMetadataFormatter bookMetadataFormatter = new XMLBookMetadataFormatter();
        bookMetadataFormatter.append(TestData.dragonBook);
        bookMetadataFormatter.append(TestData.dinosaurBook);
        String actual = bookMetadataFormatter.getMetadataString();
        assertEquals(expected.strip(), actual.strip());
    }
}
