package master.dto;

public class FundTransferDTO {
	String saccno;
	String baccno;
	double amount;
	String trdt;
	public String getSaccno() {
		return saccno;
	}
	public void setSaccno(String saccno) {
		this.saccno = saccno;
	}
	public String getBaccno() {
		return baccno;
	}
	public void setBaccno(String baccno) {
		this.baccno = baccno;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getTrdt() {
		return trdt;
	}
	public void setTrdt(String trdt) {
		this.trdt = trdt;
	}
	
}
