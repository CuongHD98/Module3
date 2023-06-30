package ID10068.service;

import ID10068.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService{
    public static List<Product> products;
    static {
        products = new ArrayList<>();
        products.add(new Product("A", 10, 100));
        products.add(new Product("B", 15, 200));
        products.add(new Product("C", 10, 150));
        products.add(new Product("D", 20, 300));
        products.add(new Product("E", 25, 250));
        products.add(new Product("F", 30, 75));
    }

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void save(Product product) {
        products.add(product);
    }

    @Override
    public Product findById(int id) {
        for (Product product : products) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }
    public int findIndexById(int id) {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == id) return i;
        }
        return -1;
    }

    @Override
    public void update(int id, Product product) {
        int index = findIndexById(id);
        if (index != -1) {
            products.set(index, product);
        }
    }

    @Override
    public void remove(int id) {
        int index = findIndexById(id);
        if (index != -1) {
            products.remove(index);
        }
    }
}
