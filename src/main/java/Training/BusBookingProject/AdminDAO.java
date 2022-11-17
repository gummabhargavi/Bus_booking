package Training.BusBookingProject;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

public class AdminDAO {
	
	SessionFactory sessionFactory;
	
	public int adminCheck(String adminName, String password){
		 sessionFactory = SessionHelper.getConnection();
	     Session session = sessionFactory.openSession();
	   // String cmd="select count(*) cnt from user_detail where username=?  and psswd = ?";
	     Criteria cr = session.createCriteria(Admin.class);
	     cr.add(Restrictions.eq("adminName", adminName));
	     cr.add(Restrictions.eq("password", password));
	     List<Admin> adminList=cr.list();
		return adminList.size();
	     }
	
	public List<Admin> showAdmin(String admin){
		sessionFactory = SessionHelper.getConnection();
		Session session=sessionFactory.openSession();
		Query query = session.createQuery("from Admin");
		Criteria cr = session.createCriteria(Admin.class);
		List<Admin> adminList=query.list();
		return adminList;
		
		
	}
	 



}
