package za.co.drinker.api.request;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import za.co.drinker.model.dto.BarStockItem;

import java.util.List;

/*  @author : henry 2024/03/07 */
@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class BarRequest {

    private Integer id;
    private String barName;
    private String adress;

    private List<BarStockItem> barStockItemList;

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

    public List<BarStockItem> getBarStockItemList() {
        return barStockItemList;
    }

    public void setBarStockItemList(List<BarStockItem> barStockItemList) {
        this.barStockItemList = barStockItemList;
    }
    @Override
    public String toString() {
        return ReflectionToStringBuilder.toString(this, ToStringStyle.JSON_STYLE);
    }
}
