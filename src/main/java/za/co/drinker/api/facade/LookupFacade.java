package za.co.drinker.api.facade;
/*  @author : henry 2024/03/06 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import za.co.drinker.exceptions.DrinkerExeption;
import za.co.drinker.model.LookupResponse;
import za.co.drinker.service.LocalDaoService;

@Service
public class LookupFacade {

    @Autowired
    private LocalDaoService localDaoService;

    public LookupResponse lookupBars(int pages, int elements) {
        LookupResponse lookupResponse = new LookupResponse();
        try {
            lookupResponse = localDaoService.lookupAllBars(pages, elements);

        } catch (DrinkerExeption le) {
            lookupResponse = new LookupResponse();
            lookupResponse.addResponse(le.getMessage());

        } catch (Exception e) {
            lookupResponse = new LookupResponse();
            lookupResponse.addResponse(e.getMessage());
        }
        return lookupResponse;
    }


    public LookupResponse lookupBarByName(String barName) {
        LookupResponse lookupResponse = new LookupResponse();
        try {

            return localDaoService.lookupBarByName(barName);

        } catch (DrinkerExeption le) {
            lookupResponse = new LookupResponse();
            lookupResponse.addResponse(le.getMessage());

        } catch (Exception e) {
            lookupResponse = new LookupResponse();
            lookupResponse.addResponse(e.getMessage());
        }
        return lookupResponse;
    }

    public LookupResponse lookupBarById(int id) {
        LookupResponse lookupResponse = new LookupResponse();
        try {

            return localDaoService.lookupBarById(id);

        } catch (DrinkerExeption le) {
            lookupResponse = new LookupResponse();
            lookupResponse.addResponse(le.getMessage());

        } catch (Exception e) {
            lookupResponse = new LookupResponse();
            lookupResponse.addResponse(e.getMessage());
        }
        return lookupResponse;
    }

    public LookupResponse lookupBarAddress(String address) {
        LookupResponse lookupResponse = new LookupResponse();
        try {

            return localDaoService.lookupBarAddress(address);

        } catch (DrinkerExeption le) {
            lookupResponse = new LookupResponse();
            lookupResponse.addResponse(le.getMessage());

        } catch (Exception e) {
            lookupResponse = new LookupResponse();
            lookupResponse.addResponse(e.getMessage());
        }
        return lookupResponse;
    }

    public LookupResponse lookupVisitEvents(int pages, int elements) {
        LookupResponse lookupResponse = new LookupResponse();

        try {
            lookupResponse = localDaoService.lookupAllVisitEvents(pages, elements);

        } catch (DrinkerExeption le) {
            lookupResponse = new LookupResponse();
            lookupResponse.addResponse(le.getMessage());

        } catch (Exception e) {
            lookupResponse = new LookupResponse();
            lookupResponse.addResponse(e.getMessage());
        }
        return lookupResponse;
    }

    public LookupResponse lookupVisitEventsByBarName(String barName) {
        LookupResponse lookupResponse = new LookupResponse();
        try {

            return localDaoService.lookupVisitEventsByBarName(barName);

        } catch (DrinkerExeption le) {
            lookupResponse = new LookupResponse();
            lookupResponse.addResponse(le.getMessage());

        } catch (Exception e) {
            lookupResponse = new LookupResponse();
            lookupResponse.addResponse(e.getMessage());
        }
        return lookupResponse;
    }

    public LookupResponse lookupVisitEventsBetween(String startDate, String endDate, int pages, int elements) {
        LookupResponse lookupResponse = new LookupResponse();
        try {
            lookupResponse = localDaoService.lookupVisitEventsBetween(startDate, endDate, pages, elements);

        } catch (DrinkerExeption le) {
            lookupResponse = new LookupResponse();
            lookupResponse.addResponse(le.getMessage());

        } catch (Exception e) {
            lookupResponse = new LookupResponse();
            lookupResponse.addResponse(e.getMessage());
        }
        return lookupResponse;
    }

}
