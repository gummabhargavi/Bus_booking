package Training.BusBookingProject;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class testseat {
	public static void main(String[] args) {
		UserDAO udao=new UserDAO();
		List<Booking> booking=udao.seats("S006");
		List<Integer>seat=new ArrayList<Integer>();
		List<Integer>seat2=new ArrayList<Integer>();
		for(Booking bookings:booking){
			System.out.println(bookings.getSeatNo());
			int a=bookings.getSeatNo();

			seat.add(a);
			
		}
			Collections.sort(seat);
			for(int i=1;i<=10;i++) {
				seat.contains(i);
					if(!seat.contains(i)) {
						seat2.add(i);
					}
				
			}
			System.out.println(seat2);
			
	}

}

