package my.board;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.util.*;

public class BoardDBBean {
	private static BoardDBBean instance = new BoardDBBean();
	
	public static BoardDBBean getInstance() {
		return instance;
	}
	
	public BoardDBBean() {

	}
	
	public Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/oracle");
		return ds.getConnection();
	}
}
