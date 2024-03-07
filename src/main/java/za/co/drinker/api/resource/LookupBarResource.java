package za.co.drinker.api.resource;
/*  @author : henry 2024/03/06 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import za.co.drinker.api.facade.LookupFacade;
import za.co.drinker.exceptions.DrinkerExeption;
import za.co.drinker.model.LookupResponse;


@RestController
@RequestMapping("/api/lookup")
public class LookupBarResource {

    @Autowired
    private LookupFacade lookupFacade;

    @GetMapping("/bars/{pages}/{elements}")
    LookupResponse lookupBars(@PathVariable("pages") int pages,@PathVariable("elements") int elements)  throws DrinkerExeption {
        return lookupFacade.lookupBars(pages,elements);
    }

    @GetMapping("/bar/id/{id}")
    LookupResponse lookupBarById(@PathVariable("id") int id) throws DrinkerExeption {
        return lookupFacade.lookupBarById(id);
    }

    @GetMapping("/bar/barname/{barName}")
    LookupResponse lookupBarName(@PathVariable("barName") String barName)throws DrinkerExeption {
        return lookupFacade.lookupBarByName(barName);
    }

    @GetMapping("/bar/address/{address}")
    LookupResponse lookupBarAddress(@PathVariable("address") String address) {
        return lookupFacade.lookupBarAddress(address);
    }



}
