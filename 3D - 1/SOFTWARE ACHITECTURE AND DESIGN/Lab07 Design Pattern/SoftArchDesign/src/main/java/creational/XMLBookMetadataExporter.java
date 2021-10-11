package creational;

import javax.xml.parsers.ParserConfigurationException;

public class XMLBookMetadataExporter extends BookMetadataExporter {

    public BookMetadataFormatter createBookMetadataFormatter() throws ParserConfigurationException {
        return new XMLBookMetadataFormatter();
    }
}
