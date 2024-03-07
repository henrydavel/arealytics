package za.co.drinker.domain.entities;
/*  @author : henry 2024/03/06 */

import javax.persistence.*;

@Entity
@Table(name ="visit_event")
public class VisitEventEntity {

    @Id
    @SequenceGenerator(name="visit_event_id_seq",
            sequenceName="visit_event_id_seq",
            allocationSize=1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
            generator="visit_event_id_seq")
    @Column(name = "ID",updatable=false)
    private int id;

    @Column(name = "UUID", length = 50)
    private String uuid;
    @Column(name = "BAR_NAME", length =50)
    private String barName;

    @Column(name = "DRINKS")
    private Integer drinks;
    @Column(name = "BEVERAGE", length =50)
    private String beverage;

    @Column(name = "HAPPY_HOUR")
    private Boolean happy_hour;
    @Column(name = "VISITED")
    private String visited;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getBarName() {
        return barName;
    }

    public void setBarName(String barName) {
        this.barName = barName;
    }

    public Integer getDrinks() {
        return drinks;
    }

    public void setDrinks(Integer drinks) {
        this.drinks = drinks;
    }

    public String getBeverage() {
        return beverage;
    }

    public void setBeverage(String beverage) {
        this.beverage = beverage;
    }

    public Boolean isHappy_hour() {
        return happy_hour;
    }

    public void setHappy_hour(Boolean happy_hour) {
        this.happy_hour = happy_hour;
    }

    public String getVisited() {
        return visited;
    }

    public void setVisited(String visited) {
        this.visited = visited;
    }
}
