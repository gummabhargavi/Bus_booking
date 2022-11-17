package Training.BusBookingProject;



import java.sql.Date;
import java.sql.Time;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

public class TravelscheduleDAO {
	SessionFactory sessionFactory;
	
	public String scheduleidID() {
		sessionFactory=SessionHelper.getConnection();
		Session session;
		session=sessionFactory.openSession();
		Criteria cr=session.createCriteria(TravelscheduleMain.class);
		List<TravelscheduleMain> travelList=cr.list();
		if (travelList.size()==0) {
			return "S001";
		}
		String ScheduleIds=travelList.get(travelList.size() - 1).getScheduleid();
		int ids = Integer.parseInt(ScheduleIds.substring(1));
		String bid=String.format("S%03d",++ids);
		return bid;
		}
	
		public Date convertDate(java.util.Date dt){
		java.sql.Date sqlDate=new java.sql.Date(dt.getTime());
		return sqlDate;
	   }
		
//		public Date ConvertTime(java.lang.String st) {
//			java.sql.Time sqltime=new java.sql.Time(st.getTime());
//			return null;
//			
//		}
	
	
	public String AddTrvelSchedule(TravelscheduleMain travelschedule) {
		String scheduleID=scheduleidID();
		travelschedule.setScheduleid(scheduleID);
		//Time time = Time.valueOf("10:59");
	    //travelschedule.setDeparturetime("10:59");
		if (sessionFactory==null) {
			sessionFactory=SessionHelper.getConnection();
		}
		Session session;
		session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.save(travelschedule);
		trans.commit();
		session.close();
		
		session = sessionFactory.openSession();
		DriverDetails driverdetail=SearchDiverId(travelschedule.getDriverid());
		trans = session.beginTransaction();
		driverdetail.setDriverstatus(DriverStatus.BOOKED);
		session.saveOrUpdate(driverdetail);
		trans.commit();
		session.close();
		
		session = sessionFactory.openSession();
		Bus busdetail=SearchBusId(travelschedule.getBusid());
		trans = session.beginTransaction();
		busdetail.setBusstatus(Bus_Status.BOOKED);
		session.saveOrUpdate(busdetail);
		trans.commit();
		session.close();
		
		
		return "***----Add----***";
		
	}
	
	 public List<TravelscheduleMain> showTSchedule(String ts){
			sessionFactory = SessionHelper.getConnection();
			Session session=sessionFactory.openSession();
			Query query = session.createQuery("from TravelscheduleMain");
			Criteria cr = session.createCriteria(TravelscheduleMain.class);
			List<TravelscheduleMain> tsList=query.list();
			return tsList;
			
		}
	
	public DriverDetails SearchDiverId(String DriverID) {
		sessionFactory=SessionHelper.getConnection();
		Session session=sessionFactory.openSession();
		Criteria cr = session.createCriteria(DriverDetails.class);
		cr.add(Restrictions.eq("driver_id",DriverID));
		List<DriverDetails> DriverList = cr.list();
		return DriverList.get(0);
	}
	
	public Bus SearchBusId(String BusID) {
		sessionFactory=SessionHelper.getConnection();
		Session session=sessionFactory.openSession();
		Criteria cr = session.createCriteria(Bus.class);
		cr.add(Restrictions.eq("busId",BusID));
		List<Bus> busList = cr.list();
		return busList.get(0);
	}
	
	public List<TravelscheduleMain>showTravel(){
		sessionFactory=SessionHelper.getConnection();
		Session session=sessionFactory.openSession();
		Criteria cr = session.createCriteria(TravelscheduleMain.class);
		List<TravelscheduleMain> travellist=cr.list();
		return travellist;
		
	}
	public TravelscheduleMain SearchTravelId(String scheduleid) {
		sessionFactory=SessionHelper.getConnection();
		Session session=sessionFactory.openSession();
		Criteria cr = session.createCriteria(TravelscheduleMain.class);
		cr.add(Restrictions.eq("scheduleid",scheduleid));
		List<TravelscheduleMain> travelList = cr.list();
		return travelList.get(0);
	}
	
	  public String updateTS(TravelscheduleMain ts){
          sessionFactory = SessionHelper.getConnection();
          Session session = sessionFactory.openSession();
          Transaction tran = session.beginTransaction();
	      session.update(ts);
          tran.commit();
          return "Details updated Successsfully  ";
         }
	
//	public String UpdateTrvelSchedule(TravelscheduleMain travelschedule) {
//		String scheduleID=scheduleidID();
//		travelschedule.setScheduleid(scheduleID);
//		//Time time = Time.valueOf("10:59");
//	    //travelschedule.setDeparturetime("10:59");
//		if (sessionFactory==null) {
//			sessionFactory=SessionHelper.getConnection();
//		}
//		Session session;
//		session=sessionFactory.openSession();
//		Transaction trans=session.beginTransaction();
//		session.update(travelschedule);
//		trans.commit();
//		session.close();
//		
//		session = sessionFactory.openSession();
//		DriverDetails driverdetail=SearchDiverId(travelschedule.getDriverid());
//		trans = session.beginTransaction();
//		driverdetail.setDriverstatus(DriverStatus.BOOKED);
//		session.update(driverdetail);
//		trans.commit();
//		session.close();
//		
//		session = sessionFactory.openSession();
//		Bus busdetail=SearchBusId(travelschedule.getBusid());
//		trans = session.beginTransaction();
//		busdetail.setBusstatus(Bus_Status.BOOKED);
//		session.update(busdetail);
//		trans.commit();
//		session.close();
//		
//		
//		return "***----Update----***";
//		
//	}
	
          
        //deleteDriver		
          public String deleteTs(String TsID) {
 			 sessionFactory = SessionHelper.getConnection();
 			 Session session = sessionFactory.openSession();
 			 TravelscheduleMain ts=SearchTravelId(TsID);
 			 Transaction t = session.beginTransaction();
 			 
 		try {
 			session.delete(ts);
 			 t.commit();
 			 return "Deleted Sucessfully  ";
          
          }catch(Exception e) {
          	e.printStackTrace();
          	return ("Record NOt Delete. "+e.getMessage());
          }
 		

 			
 		}

	
}