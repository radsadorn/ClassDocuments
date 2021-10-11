package creational;

public class JSONBookMetadataExporter extends BookMetadataExporter {

    public BookMetadataFormatter createBookMetadataFormatter() {
        return new JSONBookMetadataFormatter();
    }
}
