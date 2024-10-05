package master.dto;

public class RdDTO {
	String accno;
	double amount;
	int mn;
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
	public int getMn() {
		return mn;
	}
	public void setMn(int mn)
	{
		this.mn = mn;
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
