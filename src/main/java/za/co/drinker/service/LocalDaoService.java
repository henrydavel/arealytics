package za.co.drinker.service;
/*  @author : henry 2024/03/06 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import za.co.drinker.api.request.BarRequest;
import za.co.drinker.api.request.VisitEventRequest;
import za.co.drinker.domain.entities.BarEntity;
import za.co.drinker.domain.entities.VisitEventEntity;
import za.co.drinker.exceptions.DrinkerExeption;
import za.co.drinker.model.LookupResponse;
import za.co.drinker.model.PersistenceResponse;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureQuery;

@Service
public class LocalDaoService {

    @Autowired
    private LookupService lookupService;

    @Autowired
    private PersistenceService persistenceService;

    @Autowired
    private EntityManager entityManager;

    /*************************************************************** lookups ***************************************************************/
    @Transactional(readOnly = true)
    public LookupResponse lookupAllBars(int pages, int elements) throws DrinkerExeption {
        return lookupService.lookupAllBars(pages, elements);
    }

    @Transactional(readOnly = true)
    public LookupResponse lookupBarByName(String barName) throws DrinkerExeption {
        return lookupService.lookupBarByName(barName);

    }
    @Transactional(readOnly = true)
    public LookupResponse lookupBarById(int id) throws DrinkerExeption {
        return lookupService.lookupBarById(id);

    }
    @Transactional(readOnly = true)
    public LookupResponse lookupBarAddress(String address) throws DrinkerExeption {
        return lookupService.lookupBarAddress(address);

    }
    @Transactional(readOnly = true)
    public LookupResponse lookupAllVisitEvents(int pages, int elements) throws DrinkerExeption {
        return lookupService.lookupAllVisitEvents(pages, elements);
    }
    @Transactional(readOnly = true)
    public LookupResponse lookupVisitEventsByBarName(String barName) throws DrinkerExeption {
        return lookupService.lookupVisitEventsByBarName(barName);

    }
    @Transactional(readOnly = true)
    public LookupResponse lookupVisitEventsBetween(String startDate, String endDate, int pages, int elements) throws DrinkerExeption {
        return lookupService.lookupVisitEventsBetween(startDate, endDate, pages, elements);
    }
    private VisitEventEntity lookupVisitEventByUuid(String uuid) throws DrinkerExeption {
        return lookupService.lookupVisitEventByUuid(uuid);
    }

    /*************************************************************** persitence ***************************************************************/
    @Transactional()
    public PersistenceResponse persistVisitEvent(VisitEventRequest visitEventRequest) throws DrinkerExeption {
        return persistenceService.persistVisitEvent(visitEventRequest);
    }

    @Transactional()
    public PersistenceResponse updateVisitEvent(VisitEventRequest updateVisitEventRequest) throws DrinkerExeption {
        VisitEventEntity updateVisitEventEntity = lookupVisitEventByUuid(updateVisitEventRequest.getUuid());
        updateVisitEventEntity.setBarName(updateVisitEventRequest.getBarName());
        updateVisitEventEntity.setVisited(updateVisitEventRequest.getVisited());
        updateVisitEventEntity.setHappy_hour(updateVisitEventRequest.getHappy_hour());
        updateVisitEventEntity.setDrinks(updateVisitEventRequest.getDrinks());
        updateVisitEventEntity.setBeverage(updateVisitEventRequest.getBeverage());
        return persistenceService.updateVisitEvent(updateVisitEventEntity);
    }

    @Transactional()
    public PersistenceResponse addBar(BarRequest barRequest) throws DrinkerExeption {
        PersistenceResponse addBarrResponse = new PersistenceResponse();
        BarEntity barEntity = new BarEntity();
        barEntity.setBarName(barRequest.getBarName());
        barEntity.setAddress(barRequest.getAdress());
        addBarrResponse.addResponse(persistenceService.addBar(barEntity));
        addBarrResponse.addResponse(persistenceService.addStock(barRequest.getBarName(),barRequest.getBarStockItemList()));

        return addBarrResponse;
    }
}



