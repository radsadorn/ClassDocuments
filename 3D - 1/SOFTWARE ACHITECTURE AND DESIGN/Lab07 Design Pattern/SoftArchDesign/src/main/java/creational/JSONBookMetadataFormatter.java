package creational;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.IOException;
import java.util.Arrays;

public class JSONBookMetadataFormatter implements BookMetadataFormatter {

    JSONArray booksList;
    String rootKey;

    public JSONBookMetadataFormatter() {
        reset();
    }

    public BookMetadataFormatter reset() {
        // Please implement this method. You may create additional methods as you see fit.
        booksList = new JSONArray();
        rootKey = Book.class.getSimpleName() + "s";
        return this;
    }

    public BookMetadataFormatter append(Book b) {
        // Please implement this method. You may create additional methods as you see fit.
        JSONObject bookDetail = new JSONObject();
        bookDetail.put(Book.Metadata.ISBN.value, b.getISBN());
        bookDetail.put(Book.Metadata.AUTHORS.value, Arrays.stream(b.getAuthors()).toList());
        bookDetail.put(Book.Metadata.TITLE.value, b.getTitle());
        bookDetail.put(Book.Metadata.PUBLISHER.value, b.getPublisher());

        booksList.add(bookDetail);
        return this;
    }

    public String getMetadataString() {
        // Please implement this method. You may create additional methods as you see fit.
        JSONObject jsonPrinter = new JSONObject();
        jsonPrinter.put(rootKey, booksList);
        return jsonPrinter.toString();
    }
}
