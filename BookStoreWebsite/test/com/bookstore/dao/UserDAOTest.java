package com.bookstore.dao;

import static org.junit.Assert.*;
import static org.junit.Assume.assumeTrue;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;

import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import com.bookstore.entity.Users;

public class UserDAOTest {
	
	private static EntityManagerFactory entityManagerFactory;
	private static EntityManager entityManager;
	private static UserDAO userDAO;

	@BeforeClass

	public static void setUpClass() {
		entityManagerFactory = Persistence.createEntityManagerFactory("BookStoreWebsite");
		entityManager = entityManagerFactory.createEntityManager();
		userDAO = new UserDAO(entityManager);

	}

	@Test
	public void testCreateUsers() {
		Users user1 = new Users();
		user1.setEmail("trinhhonghai06@gmail.com");
		user1.setPassword("123456");
		user1.setFullName("Trinh Hong Hai");

		user1 = userDAO.create(user1);
		assertTrue(user1.getUserId() > 0);

	}

	@Test(expected = PersistenceException.class)
	public void testCreateUsersFieldsNotSet() {
		Users user1 = new Users();
		user1 = userDAO.create(user1);
		

	}
	@Test
	public void testUpdateUsers() {
		Users user = new Users();
		user.setUserId(22);
		user.setEmail("david@gmail.com");
		user.setFullName("David Backham");
		user.setPassword("HelloWorld");
		user = userDAO.update(user);
		String expected = "HelloWorld";
		String actual = user.getPassword();
		assertEquals(expected, actual);
	} 
	@Test
	public void testGetUsersFound() {
		Integer userId = 19;
		Users user = userDAO.get(userId);
		if (user !=null) {
			System.out.println(user.getEmail());
		}
		assertNotNull(user);
	}
	@Test
	public void testGetUsersNotFound() {
		Integer userId = 1;
		Users user = userDAO.get(userId);
		if (user == null) {
			System.out.println("No User");
		}
		assertNull(user);
	}
	@Test
	public void testDeleteUsers () {
		Integer userId = 31;
		userDAO.delete(userId);
		Users user = userDAO.get(userId);
		if (user == null) {
			System.out.println("Delete User");
		}
		assertNull(user);
	}
	@Test (expected = Exception.class)
	public void testDeleteNonExistUsers() {
		Integer userId = 24;
		userDAO.delete(userId);
		
	}
	@Test 
	public void testListAll() {
		List<Users> listUsers = userDAO.listAll();
		for(Users user : listUsers ) {
			System.out.println(user.getEmail());
		}
		assertTrue(listUsers.size() > 0 );
	}
	@Test (expected = Exception.class)
	public void testCount() {
		long totalUsers = userDAO.count();
		assertEquals(1, totalUsers);
	}
	@AfterClass
	public static void tearDowbClass() {
		entityManager.close();
		entityManagerFactory.close();
		
	}
}
