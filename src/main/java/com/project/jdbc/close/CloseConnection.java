package com.project.jdbc.close;

import com.project.jdbc.open.OpenConnection;

public class CloseConnection {
	public static void closeConnection() {
		try {
			if(OpenConnection.connection!=null) {
				OpenConnection.connection.close();
			}
			if(OpenConnection.statement!=null){
				OpenConnection.statement.close();
			}
			if (OpenConnection.resultSet!=null) {
				OpenConnection.resultSet.close();
			}
			if (OpenConnection.preparedStatement!=null) {
				OpenConnection.preparedStatement.close();
			}
		} catch (Exception e) {
		}
	}
}
