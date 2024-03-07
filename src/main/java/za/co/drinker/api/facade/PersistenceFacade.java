package za.co.drinker.api.facade;
/*  @author : henry 2024/03/06 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import za.co.drinker.api.request.BarRequest;
import za.co.drinker.api.request.VisitEventRequest;
import za.co.drinker.exceptions.DrinkerExeption;
import za.co.drinker.model.PersistenceResponse;
import za.co.drinker.service.LocalDaoService;

@Service
public class PersistenceFacade {

    @Autowired
    private LocalDaoService localDaoService;

    public PersistenceResponse persistVisitEvent(VisitEventRequest addVisitEvent) {
        PersistenceResponse persistenceResponse = new PersistenceResponse();
        try {
            if (!validVisitRequest(addVisitEvent, persistenceResponse)) {
                return persistenceResponse;
            }
            persistenceResponse = localDaoService.persistVisitEvent(addVisitEvent);

        } catch (DrinkerExeption le) {
            persistenceResponse = new PersistenceResponse();
            persistenceResponse.addResponse(le.getMessage());

        } catch (Exception e) {
            persistenceResponse = new PersistenceResponse();
            persistenceResponse.addResponse(e.getMessage());
        }
        return persistenceResponse;
    }

    public PersistenceResponse updateVisitEvent(VisitEventRequest updateVisitEventRequest) {
        PersistenceResponse persistenceResponse = new PersistenceResponse();
        try {
            if (!validVisitRequest(updateVisitEventRequest, persistenceResponse)) {
                return persistenceResponse;
            }
            persistenceResponse = localDaoService.updateVisitEvent(updateVisitEventRequest);

        } catch (DrinkerExeption le) {
            persistenceResponse = new PersistenceResponse();
            persistenceResponse.addResponse(le.getMessage());

        } catch (Exception e) {
            persistenceResponse = new PersistenceResponse();
            persistenceResponse.addResponse(e.getMessage());
        }
        return persistenceResponse;
    }

    public PersistenceResponse addBar(BarRequest barRequest) {
        PersistenceResponse persistenceResponse = new PersistenceResponse();
        try {
            if (!validBarRequest(barRequest, persistenceResponse)) {
                return persistenceResponse;
            }
            persistenceResponse = localDaoService.addBar(barRequest);

        } catch (DrinkerExeption le) {
            persistenceResponse = new PersistenceResponse();
            persistenceResponse.addResponse(le.getMessage());

        } catch (Exception e) {
            persistenceResponse = new PersistenceResponse();
            persistenceResponse.addResponse(e.getMessage());
        }
        return persistenceResponse;
    }

    private boolean validVisitRequest(VisitEventRequest visitEventRequest, PersistenceResponse persistenceResponse) {

        boolean valid = true;
        if (visitEventRequest.getUuid() == null || visitEventRequest.getUuid().isEmpty()) {
            persistenceResponse.addResponse(String.format("Input UUID can not be null or empty"));
            valid = false;
        }
        if (visitEventRequest.getVisited() == null || visitEventRequest.getVisited().isEmpty()) {
            persistenceResponse.addResponse(String.format("Input Visited can not be null or empty"));
            valid = false;
        }
        if (visitEventRequest.getBarName() == null || visitEventRequest.getBarName().isEmpty()) {
            persistenceResponse.addResponse(String.format("Input BarName can not be null or empty"));
            valid = false;
        }
        return true;
    }

    private boolean validBarRequest(BarRequest barRequest, PersistenceResponse persistenceResponse) {

        boolean valid = true;
        if (barRequest.getBarName() == null || barRequest.getBarName().isEmpty()) {
            persistenceResponse.addResponse(String.format("Input BarName can not be null or empty"));
            valid = false;
        }

        if (barRequest.getAdress() == null || barRequest.getAdress().isEmpty()) {
            persistenceResponse.addResponse(String.format("Input Adress can not be null or empty"));
            valid = false;
        }


        if (barRequest.getBarStockItemList() == null || barRequest.getBarStockItemList().isEmpty()) {
            persistenceResponse.addResponse(String.format("Must put stock when adding bar"));
            valid = false;
        }
        return true;
    }

}
