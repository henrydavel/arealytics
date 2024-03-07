package za.co.drinker.domain.repository;
/*  @author : HeDavel 2022/04/06 */

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import za.co.drinker.domain.entities.BarEntity;

import javax.transaction.Transactional;

@Repository
public interface BarRepository extends PagingAndSortingRepository<BarEntity, String> {

    BarEntity findByBarName(String barName);
    BarEntity findById(int id);
    BarEntity findByAddress(String address);

    @Transactional
    @Modifying
    @Query(nativeQuery = true, value = "CALL insert_bar(:barName, :address)")
    void addBarr(@Param("barName") String barName,@Param("address") String address);

}
