package Training.BusBookingProject;
import java.sql.Date;
import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="travel_schedule")
public class TravelscheduleMain {
	
	@Id
	@Column(name="schedule_id")
	private String scheduleid;
	
	@Column(name="bus_id")
	private String busid;
	
	@Column(name="driver_id")
	private String driverid;
	
	@Column(name="starting_point")
	private String startingpoint;
	
	@Column(name="destination_point")
	private String destinationpoint;
	
	@Column(name="schedule_date")
	private Date scheduledate;
	
	@Column(name="departure_time")
	private String departuretime;
	
	@Column(name="estimate_arrival_date")
	private Date estimatearrivaldate;
	
	@Column(name="estimate_arrival_time")
	private String estimatearrivaltime;
	
	@Column(name="fare_amount")
	private double fareamount;
	
	@Column(name="remark")
	private String remark;
	
	@Column(name="address_starting_point")
	private String addressstart;
	
	public String getAddressstart() {
		return addressstart;
	}

	public void setAddressstart(String addressstart) {
		this.addressstart = addressstart;
	}

	public String getAddressend() {
		return addressend;
	}

	public void setAddressend(String addressend) {
		this.addressend = addressend;
	}

	@Column(name="address_destination_point")
	private String addressend;
	

	public String getScheduleid() {
		return scheduleid;
	}

	public void setScheduleid(String scheduleid) {
		this.scheduleid = scheduleid;
	}

	public String getBusid() {
		return busid;
	}

	public void setBusid(String busid) {
		this.busid = busid;
	}

	public String getDriverid() {
		return driverid;
	}

	public void setDriverid(String driverid) {
		this.driverid = driverid;
	}

	public String getStartingpoint() {
		return startingpoint;
	}

	public void setStartingpoint(String startingpoint) {
		this.startingpoint = startingpoint;
	}

	public String getDestinationpoint() {
		return destinationpoint;
	}

	public void setDestinationpoint(String destinationpoint) {
		this.destinationpoint = destinationpoint;
	}

	public Date getScheduledate() {
		return scheduledate;
	}

	public void setScheduledate(Date scheduledate) {
		this.scheduledate = scheduledate;
	}

	public String getDeparturetime() {
		return departuretime;
	}

	public void setDeparturetime(String departuretime) {
		this.departuretime = departuretime;
	}

	public Date getEstimatearrivaldate() {
		return estimatearrivaldate;
	}

	public void setEstimatearrivaldate(Date estimatearrivaldate) {
		this.estimatearrivaldate = estimatearrivaldate;
	}

	public String getEstimatearrivaltime() {
		return estimatearrivaltime;
	}

	public void setEstimatearrivaltime(String estimatearrivaltime) {
		this.estimatearrivaltime = estimatearrivaltime;
	}

	public double getFareamount() {
		return fareamount;
	}

	public void setFareamount(double fareamount) {
		this.fareamount = fareamount;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	

}
