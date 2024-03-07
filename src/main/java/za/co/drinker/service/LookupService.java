package za.co.drinker.service;
/*  @author : henry 2024/03/06 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import za.co.drinker.domain.entities.BarEntity;
import za.co.drinker.domain.entities.VisitEventEntity;
import za.co.drinker.domain.repository.BarRepository;
import za.co.drinker.domain.repository.VisitEventRepository;
import za.co.drinker.exceptions.DrinkerExeption;
import za.co.drinker.model.LookupResponse;
import za.co.drinker.model.dto.BarDto;
import za.co.drinker.model.dto.BarStockItem;
import za.co.drinker.model.dto.VisitEventDto;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureQuery;
import java.util.ArrayList;
import java.util.List;

@SuppressWarnings("unchecked")
@Service
public class LookupService {

    @Autowired
    @Qualifier("barRepository")
    private BarRepository barRepository;

    @Autowired
    @Qualifier("visitEventRepository")
    private VisitEventRepository visitEventRepository;

    @Autowired
    private EntityManager entityManager;

    private LookupResponse lookupResponse;

    /* lookups for bars */
    public LookupResponse lookupAllBars(int pages, int elements) throws DrinkerExeption {
        try {
            Pageable pageAndElements = PageRequest.of(pages, elements);
            Page<BarEntity> pagedBars = barRepository.findAll(pageAndElements);

            if (!pagedBars.hasContent())
                throw new DrinkerExeption("No more Bars to page");

            List<BarEntity> bars = pagedBars.getContent();
            if (bars == null || bars.isEmpty())
                throw new DrinkerExeption("No Bars found");

            return translateToBarResponseList(bars);

        } catch (Exception e) {
            throw new DrinkerExeption(e.getMessage() + " " + (e.getCause() != null ? e.getCause() : ""));
        }
    }

    public LookupResponse lookupBarByName(String barName) throws DrinkerExeption {
        try {
            BarEntity bar = barRepository.findByBarName(barName);
            if (bar == null || bar.getBarName().isEmpty())
                throw new DrinkerExeption(String.format("%s not found in DB", barName));

            return translateToBarResponse(bar);

        } catch (Exception e) {
            throw new DrinkerExeption(e.getMessage() + " " + (e.getCause() != null ? e.getCause() : ""));
        }
    }

    public LookupResponse lookupBarById(int id) throws DrinkerExeption {
        try {
            BarEntity bar = barRepository.findById(id);
            if (bar == null || bar.getBarName().isEmpty())
                throw new DrinkerExeption(String.format("No bar with ID %s in DB", id));

            return translateToBarResponse(bar);

        } catch (Exception e) {
            throw new DrinkerExeption(e.getMessage() + " " + (e.getCause() != null ? e.getCause() : ""));
        }
    }

    public LookupResponse lookupBarAddress(String address) throws DrinkerExeption {
        try {
            BarEntity bar = barRepository.findByAddress(address);
            if (bar == null || bar.getBarName().isEmpty())
                throw new DrinkerExeption(String.format("No bar at %s according to DB", address));

            return translateToBarResponse(bar);

        } catch (Exception e) {
            throw new DrinkerExeption(e.getMessage() + " " + (e.getCause() != null ? e.getCause() : ""));
        }
    }

    /* lookups for visit_events */
    public LookupResponse lookupAllVisitEvents(int pages, int elements) throws DrinkerExeption {
        try {
            Pageable Pageable = PageRequest.of(pages, elements);
            Page<VisitEventEntity> pagedVisitEvents = visitEventRepository.findAll(Pageable);

            if (!pagedVisitEvents.hasContent())
                throw new DrinkerExeption("No more Visits or Events to page");

            List<VisitEventEntity> visitEvents = pagedVisitEvents.getContent();
            if (visitEvents == null || visitEvents.isEmpty())
                throw new DrinkerExeption("No Visit events  found");

            return translateToVisitEventResponseList(visitEvents);

        } catch (Exception e) {
            throw new DrinkerExeption(e.getMessage() + " " + (e.getCause() != null ? e.getCause() : ""));
        }
    }

    public LookupResponse lookupVisitEventsByBarName(String barName) throws DrinkerExeption {
        try {
            List<VisitEventEntity> visitEvents = visitEventRepository.findByBarName(barName);
            if (visitEvents == null || visitEvents.isEmpty())
                throw new DrinkerExeption(String.format("No Visit events @%s found", barName));

            return translateToVisitEventResponseList(visitEvents);

        } catch (Exception e) {
            throw new DrinkerExeption(e.getMessage() + " " + (e.getCause() != null ? e.getCause() : ""));
        }
    }

    public VisitEventEntity lookupVisitEventByUuid(String uuid) throws DrinkerExeption {
        try {
            VisitEventEntity visitEvent = visitEventRepository.findByUuid(uuid);
            if (visitEvent == null)
                throw new DrinkerExeption(String.format("Can not update, no Visit events found for ", uuid));

            return visitEvent;

        } catch (Exception e) {
            throw new DrinkerExeption(e.getMessage() + " " + (e.getCause() != null ? e.getCause() : ""));
        }
    }

    public LookupResponse lookupVisitEventsBetween(String startDate, String endDate, int pages, int elements) throws DrinkerExeption {
        try {

            StoredProcedureQuery sp = entityManager.createStoredProcedureQuery("retrieve_visited_bars_between_dates");
            sp.registerStoredProcedureParameter("startDate", String.class, ParameterMode.IN);
            sp.registerStoredProcedureParameter("endDate", String.class, ParameterMode.IN);
            sp.setParameter("startDate", startDate);
            sp.setParameter("endDate", endDate);
            sp.execute();

            List<VisitEventDto> visitEvents = new ArrayList();
            List<Object[]> objectList = sp.getResultList();
            for (Object[] object : objectList) {
                String barName = String.valueOf(object[0]);
                String visitedOn = String.valueOf(object[1]);
                visitEvents.add(new VisitEventDto(barName, visitedOn));
            }
            Pageable pageAndElements = PageRequest.of(pages, elements);

            int start = (int) pageAndElements.getOffset();
            int end = Math.min((start + pageAndElements.getPageSize()), visitEvents.size());

            List<VisitEventDto> pageContent = visitEvents.subList(start, end);
            Page<VisitEventDto> pagedVisitEventEntities = new PageImpl<>(pageContent, pageAndElements, visitEvents.size());

            if (!pagedVisitEventEntities.hasContent())
                throw new DrinkerExeption("No more Bars to page");

            List<VisitEventDto> visitEventDtos = pagedVisitEventEntities.getContent();
            if (visitEventDtos.isEmpty())
                throw new DrinkerExeption(String.format("No VistEvents found between %s and %s", startDate, endDate));

            return translateToVisitEventBetweenRangesResponseList(visitEventDtos);

        } catch (Exception e) {
            throw new DrinkerExeption(e.getMessage() + " " + (e.getCause() != null ? e.getCause() : ""));
        }
    }

    public List<BarStockItem> getStockList(String barName) {
        StoredProcedureQuery sp = entityManager.createStoredProcedureQuery("retrieve_bars_and_stock");
        sp.registerStoredProcedureParameter("bar_name", String.class, ParameterMode.IN);
        sp.setParameter("bar_name", barName);
        sp.execute();

        List<BarStockItem> barStockItems = new ArrayList<>();
        List<Object[]> objectList = sp.getResultList();
        for (Object[] object : objectList) {
            String name = String.valueOf(object[0]);
            double price = Double.parseDouble(object[1].toString());
            barStockItems.add(new BarStockItem(name, price));
        }

        return barStockItems;
    }

    /* translating enities to DTO's*/
    private LookupResponse translateToBarResponseList(List<BarEntity> bars) {
        LookupResponse barLookupResponse = new LookupResponse();
        bars.forEach(bar ->
        {
            BarDto barDto = new BarDto();
            barDto.setBarName(bar.getBarName());
            barDto.setAdress(bar.getAddress());
            barDto.setBarStockItemList(getStockList(bar.getBarName()));
            barLookupResponse.addResponse(barDto);
        });
        return barLookupResponse;
    }

    private LookupResponse translateToBarResponse(BarEntity bar) {
        LookupResponse barLookupResponse = new LookupResponse();
        BarDto barDto = new BarDto();
        barDto.setBarName(bar.getBarName());
        barDto.setAdress(bar.getAddress());
        barDto.setBarStockItemList(getStockList(bar.getBarName()));
        barLookupResponse.addResponse(barDto);
        return barLookupResponse;
    }

    private LookupResponse translateToVisitEventResponseList(List<VisitEventEntity> visitEvents) {
        LookupResponse visitEventLookupResponse = new LookupResponse();

        visitEvents.forEach(visitEvent ->
        {
            VisitEventDto visitEventDto = new VisitEventDto();
            visitEventDto.setId(visitEvent.getId());
            visitEventDto.setUuid(visitEvent.getUuid());
            visitEventDto.setBarName(visitEvent.getBarName());
            visitEventDto.setDrinks((visitEvent.getDrinks()) == null ? 0 : visitEvent.getDrinks());
            visitEventDto.setBarName(visitEvent.getBarName());
            visitEventDto.setBeverage(visitEvent.getBeverage());
            visitEventDto.setHappy_hour((visitEvent.isHappy_hour() != null && visitEvent.isHappy_hour()));
            visitEventDto.setVisited(visitEvent.getVisited());
            visitEventLookupResponse.addResponse(visitEventDto);
        });
        return visitEventLookupResponse;
    }

    private LookupResponse translateToVisitEventBetweenRangesResponseList(List<VisitEventDto> visitEventDtos) {
        LookupResponse visitEventBetweenRangesResponse = new LookupResponse();

        visitEventDtos.forEach(vistEvent ->
        {
            vistEvent.setId(null);
            visitEventBetweenRangesResponse.addResponse(vistEvent);

        });
        return visitEventBetweenRangesResponse;
    }

}
