package com.ground.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.ground.model.Subscriptions;

public class SubscriptionsDAO {
	String databaseURL = "jdbc:mysql://localhost:3306/bookstoredb";
	String user = "root";
	String password = "pass";

	public List<Subscriptions> list() throws SQLException {
		List<Subscriptions> listSubscriptions = new ArrayList<>();

		try (Connection connection = DriverManager.getConnection(databaseURL, user, password)) {
			String sql = "SELECT * FROM subscriptions ORDER BY name";
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery(sql);

			while (result.next()) {
				int id = result.getInt("subscription_id");
				String name = result.getString("name");
				Date lastSentDate = result.getDate("lastSentDate");
				Subscriptions subscriptions = new Subscriptions(id, name, lastSentDate);

				listSubscriptions.add(subscriptions);
			}

		} catch (SQLException ex) {
			ex.printStackTrace();
			throw ex;
		}

		return listSubscriptions;
	}
}
