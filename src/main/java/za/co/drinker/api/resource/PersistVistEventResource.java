package za.co.drinker.api.resource;
/*  @author : henry 2024/03/06 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import za.co.drinker.api.facade.PersistenceFacade;
import za.co.drinker.api.request.VisitEventRequest;
import za.co.drinker.model.PersistenceResponse;

import java.util.UUID;


@RestController
@RequestMapping("/api/persist")
public class PersistVistEventResource {

    @Autowired
    private PersistenceFacade persistenceFacade;

    @PostMapping("/addVisit")
    PersistenceResponse addVisitRequest(@RequestBody VisitEventRequest visitEventRequest) {
        visitEventRequest.setUuid(UUID.randomUUID().toString());
        return persistenceFacade.persistVisitEvent(visitEventRequest);
    }

    @PostMapping("/updateVisit")
    PersistenceResponse updateVisitRequest(@RequestBody VisitEventRequest visitEventRequest) {
        return persistenceFacade.updateVisitEvent(visitEventRequest);
    }

}
