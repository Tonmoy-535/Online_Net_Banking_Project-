package master.dto;

public class FdDTO {
	String accno;
	double amount;
	int yr;
	String bookdt;
	public String getAccno() 
	{
		return accno;
	}
	public void setAccno(String accno) 
	{
		this.accno = accno;
	}
	public double getAmount() 
	{
		return amount;
	}
	public void setAmount(double amount) 
	{
		this.amount = amount;
	}
	public int getYr() {
		return yr;
	}
	public void setYr(int yr)
	{
		this.yr = yr;
	}
	public String getBookdt() 
	{
		return bookdt;
	}
	public void setBookdt(String bookdt)
	{
		this.bookdt = bookdt;
	}
}
