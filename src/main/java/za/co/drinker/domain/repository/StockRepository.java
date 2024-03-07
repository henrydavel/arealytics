package za.co.drinker.domain.repository;
/*  @author : HeDavel 2022/04/06 */

import com.fasterxml.jackson.databind.util.JSONPObject;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import za.co.drinker.domain.entities.BarEntity;
import za.co.drinker.domain.entities.StockEntity;

import javax.transaction.Transactional;

@Repository
public interface StockRepository extends PagingAndSortingRepository<StockEntity, String> {
    @Transactional
    @Modifying
    @Query(nativeQuery = true, value = "CALL insert_bar_stock(:bar_name, :beverage, :price )")
    void addStock(@Param("bar_name") String bar_name, @Param("beverage") String beverage, @Param("price") float price);
}
