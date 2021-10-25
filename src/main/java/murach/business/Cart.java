package murach.business;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Cart implements Serializable {

    private List<LineItem> list;

    public Cart() {
        list = new ArrayList<LineItem>();
    }

    public List<LineItem> getItems() {
        return list;
    }

    public int getCount() {
        return list.size();
    }

    public void addItem(LineItem item) {
        String code = item.getProduct().getCode();
        int quantity = item.getQuantity();
        for (int i = 0; i < list.size(); i++) {
            LineItem lineItem = list.get(i);
            if (lineItem.getProduct().getCode().equals(code)) {
                lineItem.setQuantity(quantity);
                return;
            }
        }
        list.add(item);
    }

    public void removeItem(LineItem item) {
        String code = item.getProduct().getCode();
        for (int i = 0; i < list.size(); i++) {
            LineItem lineItem = list.get(i);
            if (lineItem.getProduct().getCode().equals(code)) {
                list.remove(i);
                return;
            }
        }
    }
}
