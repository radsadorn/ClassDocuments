package creational;

import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;

public class BookMetadataFormatterFactory {
    public enum Format {
        CSV("CSV"),
        XML("XML"),
        JSON("JSON");

        public final String value;

        private Format(String value) {
            this.value = value;
        }
    }

    public static BookMetadataFormatter getBookMetadataFormatter(Format format)
            throws IOException, ParserConfigurationException {
        BookMetadataFormatter formatter;
        switch (format) {
            case CSV ->
                    formatter = new CSVBookMetadataFormatter();
            case XML ->
                    formatter = new XMLBookMetadataFormatter();
            case JSON ->
                    formatter = new JSONBookMetadataFormatter();
            default ->
                    formatter = null;
        }
        return formatter;
    }
}
