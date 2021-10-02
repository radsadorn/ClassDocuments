public class PrintToScreen implements PrintService{
    
    public void print(Book book) {
        do {
            System.out.println(book.getCurrentPage());
        } while (book.turnToNextPage());
    }
}
