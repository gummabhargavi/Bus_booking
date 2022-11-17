package Training.BusBookingProject;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user_wallet")
public class Wallet {
	
	@Id
	@Column(name="wallet_id")
	private String walletId;
	
	@Enumerated(EnumType.STRING)
	@Column(name="Wallet_Type")
	private WalletType walletType;
	
	@Column(name="WalletAmount")
	private float walletAmount;
	
	@Column(name="user_id")
	private String userId;
	
	
	public String getWalletId() {
		return walletId;
	}
	public void setWalletId(String walletId) {
		this.walletId = walletId;
	}
	public WalletType getWalletType() {
		return walletType;
	}
	public void setWalletType(WalletType walletType) {
		this.walletType = walletType;
	}
	public float getWalletAmount() {
		return walletAmount;
	}
	public void setWalletAmount(float walletAmount) {
		this.walletAmount = walletAmount;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
   	

}
