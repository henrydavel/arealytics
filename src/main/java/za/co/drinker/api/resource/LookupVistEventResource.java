package za.co.drinker.api.resource;
/*  @author : henry 2024/03/06 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import za.co.drinker.api.facade.LookupFacade;
import za.co.drinker.exceptions.DrinkerExeption;
import za.co.drinker.model.LookupResponse;


@RestController
@RequestMapping("/api/lookup")
public class LookupVistEventResource {

    @Autowired
    private LookupFacade lookupFacade;

    @GetMapping("/visitevents/{pages}/{elements}")
    LookupResponse lookupVisitEvents(@PathVariable("pages") int pages, @PathVariable("elements") int elements) throws DrinkerExeption {
        return lookupFacade.lookupVisitEvents(pages, elements);
    }

    @GetMapping("/visitevents/{bar_name}")
    LookupResponse lookupVisitEventsByBarName(@PathVariable("bar_name") String bar_name) throws DrinkerExeption {
        return lookupFacade.lookupVisitEventsByBarName(bar_name);
    }
    @GetMapping("/visitevents/between/{startDate}/{endDate}/{pages}/{elements}")
    LookupResponse lookupVisitEventsBetween(@PathVariable("startDate") String startDate, @PathVariable("endDate") String endDate,@PathVariable("pages") int pages, @PathVariable("elements") int elements) throws DrinkerExeption {
        return lookupFacade.lookupVisitEventsBetween( startDate,  endDate, pages, elements);
    }


}
