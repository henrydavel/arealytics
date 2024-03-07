package za.co.drinker.domain.entities;
/*  @author : henry 2024/03/06 */

import javax.persistence.*;

@Entity
@Table(name ="bar")
public class StockEntity {

    @Id
    @SequenceGenerator(name="stock_id_seq",
            sequenceName="stock_id_seq",
            allocationSize=1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
            generator="stock_id_seq")
    @Column(name = "ID",updatable=false)
    private int id;

    @Column(name = "BARNAME", length = 50)
    private String barName;

    @Column(name = "ADDRESS", length = 200)
    private String address;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBarName() {
        return barName;
    }

    public void setBarName(String barName) {
        this.barName = barName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
