package za.co.drinker.service;
/*  @author : henry 2024/03/06 */

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;
import org.hibernate.query.NativeQuery;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import za.co.drinker.api.request.VisitEventRequest;
import za.co.drinker.domain.entities.BarEntity;
import za.co.drinker.domain.entities.VisitEventEntity;
import za.co.drinker.domain.repository.BarRepository;
import za.co.drinker.domain.repository.StockRepository;
import za.co.drinker.domain.repository.VisitEventRepository;
import za.co.drinker.model.PersistenceResponse;
import za.co.drinker.model.dto.BarStockItem;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureQuery;
import java.util.ArrayList;
import java.util.List;

import static org.postgresql.core.Oid.JSON;
import static org.postgresql.core.Oid.JSON_ARRAY;

@Service
public class PersistenceService {

    @Autowired
    @Qualifier("visitEventRepository")
    private VisitEventRepository visitEventRepository;

    @Autowired
    @Qualifier("barRepository")
    private BarRepository barRepository;

    @Autowired
    @Qualifier("stockRepository")
    private StockRepository stockRepository;
    @Autowired
    private EntityManager entityManager;

    private PersistenceResponse persistenceResponse;

    public PersistenceResponse persistVisitEvent(VisitEventRequest visitEventRequest) {
        persistenceResponse = new PersistenceResponse();
        try {
            visitEventRepository.save(translateAddVisitRequest(visitEventRequest));
            persistenceResponse.addResponse("Added VisitRequest");
        } catch (Exception e) {
            persistenceResponse.addResponse(e.getMessage());
        }
        return persistenceResponse;
    }

    public PersistenceResponse updateVisitEvent(VisitEventEntity updateVisitEventEntity) {
        persistenceResponse = new PersistenceResponse();
        try {
            visitEventRepository.save(updateVisitEventEntity);
            persistenceResponse.addResponse("Updated VisitRequest");
        } catch (Exception e) {
            persistenceResponse.addResponse(e.getMessage());
        }
        return persistenceResponse;
    }

    public PersistenceResponse addBar(BarEntity barEntity) {
        persistenceResponse = new PersistenceResponse();
        try {
            barRepository.addBarr(barEntity.getBarName(), barEntity.getAddress());
            persistenceResponse.addResponse("Added new Bar " + barEntity.getBarName());
        } catch (Exception e) {
            persistenceResponse.addResponse(e.getMessage());
        }
        return persistenceResponse;
    }
    public Object addStock(String barName, List<BarStockItem> barStockItemList) {
        persistenceResponse = new PersistenceResponse();
        try {
            /*get bar*/
            /*get (select id from stock_item si where si."FK_item_type" =(select id from "item_type" where "name" = ((d->>'name'*/
            /*price*/


            stockRepository.addStock("Cubana", "Castle Lite", 33.33f);
            persistenceResponse.addResponse("Added Stock for " + barName);
        } catch (Exception e) {
            persistenceResponse.addResponse(e.getMessage());
        }
        return persistenceResponse;
    }
    private VisitEventEntity translateAddVisitRequest(VisitEventRequest visitEventRequest) throws JsonProcessingException {
        ObjectMapper om  = new ObjectMapper();
        VisitEventEntity visitEventEntity = om.readValue(visitEventRequest.toString(), VisitEventEntity.class);
        if (visitEventEntity.getBarName()==null)
            visitEventEntity.setBarName("");

        if (visitEventEntity.getDrinks()==null) {
            visitEventEntity.setDrinks(0);
            visitEventEntity.setBeverage("");
        }

        if (visitEventEntity.isHappy_hour()==null)
            visitEventEntity.setHappy_hour(false);

        return visitEventEntity;
    }


}
