package dao.custom;

import dao.SuperDAO;

import java.sql.Connection;
import java.sql.SQLException;

public interface QueryDAO extends SuperDAO {
    int getSumOrders(Connection connection) throws SQLException, ClassNotFoundException;

    int getItem(Connection connection) throws SQLException, ClassNotFoundException;

    int getCustomer(Connection connection) throws SQLException, ClassNotFoundException;

}
