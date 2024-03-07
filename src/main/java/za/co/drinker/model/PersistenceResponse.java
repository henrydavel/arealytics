package za.co.drinker.model;
/*  @author : henry 2024/03/06 */

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
@SuppressWarnings("unchecked")
public class PersistenceResponse<T> {

    private List<T> response;

    public List<T> getResponse() {
        if (this.response == null){
            this.response = new ArrayList<>();
        }
        return  this.response;
    }

    public void setResponse(List<T> response) {
        this.response = response;
    }

    public void addResponse(T t) {
        this.getResponse().add(t);
    }

}
