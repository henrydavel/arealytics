package za.co.drinker.model.dto;
/*  @author : henry 2024/03/06 */

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class VisitEventDto {
    private Integer id;
    private String uuid;
    private String barName;
    private Integer drinks;
    private String beverage;
    private Boolean happy_hour;
    private String visited;

    public VisitEventDto(){}

    public VisitEventDto(String barName, String visited) {
        this.barName = barName;
        this.visited = visited;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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
