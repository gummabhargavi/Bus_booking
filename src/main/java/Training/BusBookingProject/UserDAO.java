package Training.BusBookingProject;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

public class UserDAO {

	SessionFactory sessionFactory;
	
	public List<User> showUser(String user){
		sessionFactory = SessionHelper.getConnection();
		Session session=sessionFactory.openSession();
		Query query = session.createQuery("from User");
		Criteria cr = session.createCriteria(User.class);
		List<User> userList=query.list();
		return userList;
		
		
	}
	
	public String updateUser(User user) {
		 sessionFactory = SessionHelper.getConnection();
		 Session session = sessionFactory.openSession();
		 Criteria cr = session.createCriteria(User.class);
		 Transaction trans = session.beginTransaction();
		 session.update(user);
		 trans.commit();
		return "***...Record Updated...***";

		 
	 }

	public User SearchUserId(String userId) {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(User.class);
		List<User> userlist = cr.list();
		cr.add(Restrictions.eq("userid", userId));
		return userlist.get(0);
	}
	
	 public String deleteUser(String userid) {
		 sessionFactory = SessionHelper.getConnection();
		 Session session = sessionFactory.openSession();
		 User user=SearchUserId(userid);
		 Transaction t = session.beginTransaction();
		 try {
			 session.delete(user);
			 t.commit();
			return "Record delete";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			return ("Not Delete ."+e.getMessage());
			
			
		}
		
}
	 

	public String generateUserId() {
		
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(User.class);
		List<User> userList = cr.list();
		if (userList.size() == 0) {
			return "U001";
		}
		session.close();
		String id = userList.get(userList.size() - 1).getUserid();
		int id1 = Integer.parseInt(id.substring(1));
		id1++;
		String id2 = String.format("U%03d", id1);
		return id2;

	}

	public UserDAO() {
	}

	public String Adduser(User user) {
		String userid = generateUserId();
		user.setUserid(userid);
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(User.class);
		Transaction trans = session.beginTransaction();
		session.save(user);
		trans.commit();
		return "User Details added Successfully";

	}

	

	public String generateBookingId() {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(Booking.class);
		List<Booking> bookingList = cr.list();
		if (bookingList.size() == 0) {
			return "K001";
		}
		session.close();
		String id = bookingList.get(bookingList.size() - 1).getBookingId();
		int id1 = Integer.parseInt(id.substring(1));
		id1++;
		String id2 = String.format("K%03d", id1);
		return id2;
	}

	public String addBooking(Booking booking) {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		String bookId = generateBookingId();
		booking.setBookingStatus(BookingStatus.PENDING);
		booking.setBookingId(bookId);
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		// booking.setDateofBooking(sqlDate);
		Transaction t = session.beginTransaction();
		session.save(booking);
		t.commit();
		return "Added Booking Details";
	}

	public List<Booking> showBooking(String booking) {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Booking");
		Criteria cr = session.createCriteria(Booking.class);
		List<Booking> bookingLst = query.list();
		return bookingLst;
	}

	public List<User> checkUsers(String user, String psswd) {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(User.class);
		cr.add(Restrictions.eq("username", user));
		cr.add(Restrictions.eq("password", psswd));
		List<User> usrLst = cr.list();
		return usrLst;

	}

	public Booking SearchBookingId(String UserId) {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(Booking.class);
		cr.add(Restrictions.eq("bookingId", UserId));
		List<Booking> bookinglist = cr.list();
		return bookinglist.get(0);
	}

	public List<Booking> seats(String a) {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("From Booking where scheduleId=:s").setParameter("s", a);
		List<Booking> leavelist1 = query.list();
		return leavelist1;
	}

	public List<Integer> book(String id) {
		List<Booking> booking = seats(id);
		List<Integer> seat = new ArrayList<Integer>();
		List<Integer> seat2 = new ArrayList<Integer>();
		for (Booking bookings : booking) {
			System.out.println(bookings.getSeatNo());
			int a = bookings.getSeatNo();
			seat.add(a);
		}
		for (int i = 1; i <= 20; i++) {
			if (!seat.contains(i)) {
				seat2.add(i);
			}

		}
		return seat2;
	}
	
	public List<Booking>ShowBookingOp(String UserId,String SchudeleId ){
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("From Booking where scheduleId=:s and userId=:u").setParameter("s", UserId).setParameter("u", SchudeleId);
		List<Booking> leavelist2 = query.list();
		return leavelist2;
		
		
	}
	 public String CancelTicets(String BookingID) {
		 sessionFactory =SessionHelper.getConnection();
		 Session session=sessionFactory.openSession();
		 String hql = "DELETE FROM Booking WHERE booking_id=:book";
		 Query query = session.createQuery(hql);
		 query.setParameter("book", BookingID);
		 query.executeUpdate();
		 return "Gaurav";
	 }
	
}
