package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;

public class LoginDao {

	public boolean validate(User loginBean) throws ClassNotFoundException {
		String SELECT_USERS_SQL = "SELECT FROM employee" +
	            "  ( first_name, last_name, username, password, address, contact) VALUES " +
	            " (?, ?, ?, ?,?,?);";
		boolean status = false;

//		Class.forName("com.mysql.jdbc.Driver");

		try {
			
		  Connection connection = SingletonConnection.getConnection();
//				Connection connection = DriverManager
//				.getConnection("jdbc:mysql://localhost:3306/db_mvc_cat?useSSL=false", "root", "root");
//		  PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement("select * from employee where username = ? and password = ? ");
			preparedStatement.setString(1, loginBean.getUsername());
			preparedStatement.setString(2, loginBean.getPassword());

			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			status = rs.next();

		} catch (SQLException e) {
			// process sql exception
			printSQLException(e);
		}
		return status;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}
}