package Training.BusBookingProject;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="driver_detail")
public class DriverDetails {
	@Id
	@Column(name="driver_id")
	private  String driver_id;
	@Column(name="driver_name")
	private String driver_name;
	@Column(name="driver_lic_no")
	private String driver_lic_no;
	@Column(name="contact_no")
	private String contact_no;
	
	@Enumerated(EnumType.STRING)
	@Column(name="driver_status")
	private DriverStatus driverstatus;
	public DriverStatus getDriverstatus() {
		return driverstatus;
	}
	public void setDriverstatus(DriverStatus driverstatus) {
		this.driverstatus = driverstatus;
	}
	public String getDriver_id() {
		return driver_id;
	}
	public void setDriver_id(String driver_id) {
		this.driver_id = driver_id;
	}
	public String getDriver_name() {
		return driver_name;
	}
	public void setDriver_name(String driver_name) {
		this.driver_name = driver_name;
	}
	public String getDriver_lic_no() {
		return driver_lic_no;
	}
	public void setDriver_lic_no(String driver_lic_no) {
		this.driver_lic_no = driver_lic_no;
	}
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	

}
