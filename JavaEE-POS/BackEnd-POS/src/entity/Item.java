package entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class Item {
    private String code;
    private String description;
    private int qty;
    private double unitPrice;
}
