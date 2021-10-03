public class ReaderService implements PrinterService{
    
    public void print(Book book) {
        do {
            System.out.println(book.getCurrentPage());
        } while (book.turnToNextPage());
    }
}
