package service;

import model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerService implements MyCustomerService{

    private static Map<Integer,Customer> customers;
    static {
        customers = new HashMap<>();
        customers.put(1,new Customer(1,"vu gia","1/11/2020", "image/1.jpg"));
        customers.put(2,new Customer(2,"chi chau","20/11/2020", "image/2.jpg"));
        customers.put(3,new Customer(3,"doan thi","1/10/2020", "image/3.jpg"));
        customers.put(4,new Customer(4,"chi dai","20/10/2020", "image/4.jpg"));
    }

    @Override
    public List<Customer> show() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void add(int id, Customer customer) {
        customers.put(id,customer);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id,customer);
    }

    @Override
    public void delete(int id) {
        customers.remove(id);
    }

    @Override
    public boolean checkId(int id) {
        for (int i = 0; i < customers.size(); i++) {
            if (id == customers.get(i).getId()){
                return true;
            }
        }
        return false;
    }
}
