import java.util.List;

public class BookPublisher {
    public static void main(String[] args) {
        
        PrinterService printer = new PublisherService();
        Book book = new Book("Tyland", List.of("I", "moved", "here", "recently", "too"));

        printer.print(book);
    }
}
