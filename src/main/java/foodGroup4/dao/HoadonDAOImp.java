package foodGroup4.dao;

import foodGroup4.config.HibernateUtil;
import foodGroup4.entity.Hoadon;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Component
public class HoadonDAOImp extends HibernateUtil implements HoadonDAO {
    @Override
    public void create(Hoadon hoadon) {
        super.create(hoadon);
    }

    @Override
    public List<Hoadon> getHoaDonBySdtKhachHang(String sdt) {
        String hql = "from Hoadon HD where HD.khachhang.sdt = :sdt order by ngay desc";
        Query query = getSession().createQuery(hql);
        query.setParameter("sdt", sdt);
        return query.list();
    }

    @Override
    public Hoadon findByid(int id) {
        Hoadon hoadon = this.fetchById(id, Hoadon.class);

        if(hoadon != null) {
            // fix org.hibernate.LazyInitializationException => I'm stupid
            hoadon.getChitiethoadons().size();
        }

        return hoadon;
    }

    @Override
    public void deleteHoadonById(int id) {
        this.delete(id, Hoadon.class);
    }
}
