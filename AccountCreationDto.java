package master.dto;

public class AccountCreationDto {
	String accno;
	String accctyp;
	String dtop;
	Double balance;
	String cid;
	public String getAccno() {
		return accno;
	}
	public void setAccno(String accno) {
		this.accno = accno;
	}
	public String getAccctyp() {
		return accctyp;
	}
	public void setAccctyp(String accctyp) {
		this.accctyp = accctyp;
	}
	public String getDtop() {
		return dtop;
	}
	public void setDtop(String dtop) {
		this.dtop = dtop;
	}
	public Double getBalance() {
		return balance;
	}
	public void setBalance(Double balance) {
		this.balance = balance;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
}
