package com.bookstore.entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.bookstore.entity.Users;

public class UserTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Users user1 = new Users();
		user1.setEmail("quoccuong@gmail.com");
		user1.setPassword("123");
		user1.setFullName("Tran Quoc Cuong");
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("BookStoreWebsite");
		EntityManager entityManager =entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.persist(user1);
		entityManager.getTransaction().commit();
		entityManager.close();
		entityManagerFactory.close();
		System.out.println("A Users object was persisted ");
	}

}
