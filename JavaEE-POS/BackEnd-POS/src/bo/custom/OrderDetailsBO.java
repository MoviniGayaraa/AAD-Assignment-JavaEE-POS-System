package bo.custom;

import bo.SuperBO;
import dto.OrderDetailDTO;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
public interface OrderDetailsBO extends SuperBO {
    ArrayList<OrderDetailDTO> getAllOrderDetails(Connection connection) throws SQLException, ClassNotFoundException;

    boolean purchaseOrderDetails(OrderDetailDTO dto, Connection connection) throws SQLException, ClassNotFoundException;

}
