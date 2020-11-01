package service;

import model.Customer;

import java.util.List;

public interface MyCustomerService {
    List<Customer> show();
    void add(int id,Customer customer);
    void update(int id,Customer customer);
    void delete(int id);
    boolean checkId(int id);
}
