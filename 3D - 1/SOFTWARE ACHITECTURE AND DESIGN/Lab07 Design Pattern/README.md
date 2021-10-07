# Instructions
In this assignment, you tasks invovle modification of a simple Java program that exports, from a collection of books, metadata in various formats. To complete the tasks in this assignment, the use of IDE is strongly recommend, Eclipse IDE or IntelliJ IDEA for instance. To begin the assignment, please download a zip file provided. You should be able to import it to your IDE as a Java project.

The structure of the zip file can be described as follows:
* lib/
    DO NOT MODIFY anything in this directory. This directory contains required libraries (JAR files) for the Java code.

* src/main/java/creational/
    This directory contains Java source files for this assignment as follows:
    * Main.java - A class with a main method to illustrate the current and expected usages of a program. You may modify this file as you see fit.
    * DO NOT MODIFY the following files:
        * Book.java - a class that models a book with its metadata
        * BookCollection.java - simply a class for a collection of books
        * BookMetadataFormatter.java - an interface that defines methods for all the formatters
        * CSVBookMetadataFormatter.java - a class to construct from books a string of metadata in CSV format
        * XMLBookMetadataFormatter.java - a class to construct from books a string of metadata in XML format
        * BookMetadataFormatterFactory.java - a factory class that inistantiates objects of BookMetadataFormatter's subtypes.
        * TestData.java - a class that contains static data for convenience's sake
    * Your tasks for this assignment require you to implement the following files:
        * JSONBookMetadataFormatter.java - a class to construct from books a string of metadata in JSON format. You need to implement this class.
        * BookMetadataExporter.java - a class that to export from all the books in its collection the medata in one of supported formats. You need to implement this class as well as create its subclasses.
* src/test/java/
    DO NOT MODIFY anything in this directory. The directory contains Java source files for many unit tests (JUnit) as follows:
    * CSVBookMetadataFormatterTest.java
    * JSONBookMetadataFormatterTest.java
    * XMLBookMetadataFormatterTest.java
* src/test/resources/
    DO NOT MODIFY anything in this directory. The directory contains the expected results for the unit tests in src/test/java.

### Your tasks
1. The first involves the Builder Pattern. To introduce support for JSON file format, your first task is to implement all the required methods in a class named JSONBookMetadataFormatter as indicated by an interface named BookMetadataFormatter. Your implementation should produce results that satisfy all the unit tests in JSONBookMetadataFormatterTest. For references, you may examine both CSVBookMetadataFormatter and XMLBookMetadataFormatter to help you understand how to implement a new formatter.
2. Currenty, the code relies on a class named BookMetadataFormatterFactory to create a BookMetadataFormatter object. This approach is often called the "Factory Pattern" where the factory is a class that inistantiates objects of various subtypes using if-else or switch. This current approach, however, violates OCP. Imagine that you need to add a support for a new format, such as YAML, the BookMetadataFormatterFactory must be changed to accommodate such an update. 
    Your second task is to apply the Factory Method Pattern to fix the issue. Please complete BookMetadataExporter from the skeleton file provided as well as create its appropriate subclasses. In a complete implementation, an object of type BookMetadataExporter should be able to export from all the books in its collection the medata in one of supported formats. In the finished assignment, the BookMetadataFormatterFactory will be no longer used.

IMPORTANT: Commit your code on GitHub and submit a link to the src/main/java/creational/ directory. Please preserve the structure of files and directories.