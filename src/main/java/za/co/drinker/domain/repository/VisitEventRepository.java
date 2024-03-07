package za.co.drinker.domain.repository;
/*  @author : HeDavel 2022/04/06 */

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import za.co.drinker.domain.entities.BarEntity;
import za.co.drinker.domain.entities.VisitEventEntity;

import java.util.List;

@Repository
public interface VisitEventRepository extends PagingAndSortingRepository<VisitEventEntity, String> {

    List<VisitEventEntity> findByBarName(String barName);
    VisitEventEntity findByUuid(String uuid);
}
