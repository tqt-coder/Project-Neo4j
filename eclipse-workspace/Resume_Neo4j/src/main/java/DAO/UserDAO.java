package DAO;

import org.neo4j.driver.AuthTokens;
import org.neo4j.driver.Driver;
import org.neo4j.driver.GraphDatabase;
import org.neo4j.driver.Record;
import org.neo4j.driver.Result;
import org.neo4j.driver.Session;

import bean.UserBean;


import static org.neo4j.driver.Values.parameters;

public class UserDAO implements AutoCloseable{
	private static Driver driver = null;
	
	private static final String URI = "bolt://localhost:7687";
	private static final String USER = "neo4j";
	private static final String PASSWORD = "dat";
	
	private static void Connection(String uri, String user, String password) {
		driver = GraphDatabase.driver(uri, AuthTokens.basic(user, password));
	}
	@Override
	public void close() throws Exception {
		// TODO Auto-generated method stub
		
	}
	
	public static boolean addUser(UserBean s) {
		Connection(URI, USER, PASSWORD);
		try (Session session = driver.session()) {
			
			boolean flag = session.writeTransaction(tx -> {
				Result result = tx.run("CREATE (a:account{gmail: $gmail, fullname: $fullname, password: $pass}) return a ",
						parameters("gmail",s.getGmail(),"fullname",s.getName(), "pass",s.getPassword()));

				boolean test = result.hasNext();
				return test;
			});
			return flag;
		}
	}
	
	public static String checkPass(UserBean s) {
		Connection(URI, USER, PASSWORD);
		try (Session session = driver.session()) {
			
			String flag = session.writeTransaction(tx -> {
				Result result = tx.run("Match (a:account{gmail: $gmail,password: $pass}) return a.fullname ",
						parameters("gmail",s.getGmail(), "pass",s.getPassword()));
				String test = null;
				if(result.hasNext()) {
					
					 test = result.next().get("a.fullname").toString();
					 String test2 = test.replace('"', ' ');
					 test = test2.trim();
				}
				return test;
			});
			return flag;
		}
	}
	
	

}
