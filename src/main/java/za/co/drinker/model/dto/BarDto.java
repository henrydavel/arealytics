package za.co.drinker.model.dto;
/*  @author : henry 2024/03/06 */

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import java.util.List;

@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class BarDto {

    private Integer id;
    private String barName;
    private String adress;

    private List<BarStockItem> barStockItemList;


    public List<BarStockItem> getBarStockItemList() {
        return barStockItemList;
    }

    public void setBarStockItemList(List<BarStockItem> barStockItemList) {
        this.barStockItemList = barStockItemList;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBarName() {
        return barName;
    }

    public void setBarName(String barName) {
        this.barName = barName;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }



}
