package za.co.drinker.api.resource;
/*  @author : henry 2024/03/06 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import za.co.drinker.api.facade.PersistenceFacade;
import za.co.drinker.api.request.BarRequest;
import za.co.drinker.api.request.VisitEventRequest;
import za.co.drinker.model.PersistenceResponse;


@RestController
@RequestMapping("/api/persist")
public class PersistBarResource {

    @Autowired
    private PersistenceFacade persistenceFacade;

    @PostMapping("/addBar")
    PersistenceResponse addBar(@RequestBody BarRequest barRequest) {
        return persistenceFacade.addBar(barRequest);
    }

    @PostMapping("/updateBar")
    PersistenceResponse updateVisitRequest(@RequestBody VisitEventRequest visitEventRequest) {
        return persistenceFacade.updateVisitEvent(visitEventRequest);
    }
}
