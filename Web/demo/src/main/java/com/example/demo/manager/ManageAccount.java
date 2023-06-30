package com.example.demo.manager;

import com.example.demo.model.Account;

import java.util.HashMap;
import java.util.Map;


public class ManageAccount {
    public ManageAccount() {
    }

    public static Map<Integer, Account> accounts;

    static {
        accounts = new HashMap<>();
        accounts.put(1, new Account("john@codegym.vn", "Hanoi"));
        accounts.put(2, new Account("bill@codegym.vn", "Danang"));
        accounts.put(3, new Account("alex@codegym.vn", "Saigon"));
        accounts.put(4, new Account("adam@codegym.vn", "Beijin"));
        accounts.put(5, new Account("sophia@codegym.vn", "Miami"));
        accounts.put(6, new Account("rose@codegym.vn", "Newyork"));
    }

    public static void main(String[] args) {
        System.out.println(accounts);
    }

}
