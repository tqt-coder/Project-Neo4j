package dbConnection;

import org.neo4j.driver.AuthTokens;
import org.neo4j.driver.Driver;
import org.neo4j.driver.GraphDatabase;
import org.neo4j.driver.internal.spi.Connection;

public class ConnectNeo4j {
	
	public static Driver getNeo4jConnection(){
		String uri = "bolt://localhost:7687";
		String user = "neo4j";
		String password = "dat";
		return getNeo4jConnection(uri, user, password);
	}

	private static Driver getNeo4jConnection(String uri, String user, String password) {
		return GraphDatabase.driver(uri, AuthTokens.basic(user, password));
	}
}
