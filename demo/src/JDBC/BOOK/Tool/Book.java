package JDBC.BOOK.Tool;

public class Book {
    public static final int PAGE_SIZE=5;
    private int id;
    private String name;
    private double price;
    private int bookCount;
    private String author;

    public Book() {
    }

    public Book(int id, String name, double price, int bookcount, String author) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.bookCount = bookcount;
        this.author = author;
    }

    /**
     * 获取
     * @return id
     */
    public int getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * 获取
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取
     * @return price
     */
    public double getPrice() {
        return price;
    }

    /**
     * 设置
     * @param price
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * 获取
     * @return bookcount
     */
    public int getBookCount() {
        return bookCount;
    }

    /**
     * 设置
     * @param bookCount
     */
    public void setBookCount(int bookCount) {
        this.bookCount = bookCount;
    }

    /**
     * 获取
     * @return author
     */
    public String getAuthor() {
        return author;
    }

    /**
     * 设置
     * @param author
     */
    public void setAuthor(String author) {
        this.author = author;
    }
}
