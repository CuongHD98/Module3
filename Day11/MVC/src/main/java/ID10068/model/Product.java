package ID10068.model;

public class Product {
    private static int countID = 1;
    private int id;
    private String name;
    private int quantity;
    private float price;

    public Product() {
    }

    public Product(String name, int quantity, float price) {
        this.id = countID++;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
    }

    public static int getCountID() {
        return countID;
    }

    public static void setCountID(int countID) {
        Product.countID = countID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}
