package manager;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class ManagerCustomer {
    public static List<Customer> customers = new ArrayList<>();
    static {
        customers.add(new Customer("Mai Van Hoan", "20/08/1983","Ha Noi", "https://pngfre.com/wp-content/uploads/anime-png-image-pngfre-1.jpg"));
        customers.add(new Customer("Nguyen Van Nam", "21/08/1983","Bac Gian", "https://www.pngall.com/wp-content/uploads/2016/07/Anime-Download-PNG.png"));
        customers.add(new Customer("Mai Van Hoan", "22/08/1983","Nam Dinh", "https://w7.pngwing.com/pngs/274/1008/png-transparent-eromanga-sensei-desktop-anime-anime.png"));
        customers.add(new Customer("Mai Van Hoan", "17/08/1983","Ha Tay", "https://png.pngtree.com/png-vector/20230325/ourmid/pngtree-anime-style-graduation-girl-png-image_6665909.png"));
        customers.add(new Customer("Mai Van Hoan", "19/08/1983","Ha Noi", "https://freepngimg.com/save/128108-boy-school-anime-hq-image-free/530x688"));
    }
}
