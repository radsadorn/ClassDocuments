import java.util.List;

public class BookReader {
    public static void main(String[] args) {
        
        PrinterService printer = new ReaderService();
        Book book = new Book("Tyland", List.of("I", "moved", "here", "recently", "too"));

        printer.print(book);
    }
}
