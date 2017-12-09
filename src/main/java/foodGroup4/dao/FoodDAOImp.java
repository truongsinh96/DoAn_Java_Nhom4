package foodGroup4.dao;

import foodGroup4.config.HibernateUtil;
import foodGroup4.entity.Mon;
import org.hibernate.Query;
import org.springframework.stereotype.Component;
import java.util.Calendar;
import java.util.List;

@Component
public class FoodDAOImp extends HibernateUtil implements FoodDAO {

    public List<Mon> getList(int maxResult) {
        String hql = "from Mon";
        Query query = getSession().createQuery(hql);
        query.setMaxResults(maxResult);

        List<Mon> mons = query.list();
        return mons;
    }

    public List<Mon> getTopFoodOrderOfTheWeeks(int maxResult) {
        Calendar toDay = Calendar.getInstance();
        Calendar first = (Calendar) toDay.clone();
        first.add(Calendar.DAY_OF_WEEK,
                first.getFirstDayOfWeek() - first.get(Calendar.DAY_OF_WEEK));
        Calendar last = (Calendar) first.clone();
        last.add(Calendar.DAY_OF_YEAR, 6);

        String hql = "select (pk.mon) from Chitiethoadon CTHD where CTHD.pk.hoadon.ngay >= :first and CTHD.pk.hoadon.ngay <= :last group by CTHD.pk.mon order by sum(CTHD.soLuong) desc";
        Query query = getSession().createQuery(hql);
        query.setParameter("first", first.getTime());
        query.setParameter("last", last.getTime());
        query.setMaxResults(maxResult);

        List<Mon> topMonOfWeeks = query.list();

        System.out.println("Top order week count: " + topMonOfWeeks.size());

        return topMonOfWeeks;
    }
}


















