package Model;

public class user {
	private Integer id;
	private String name;
	private String username;
	private String password;
	private String address;
	private String phone;
	private String mobile;
	
	public user(String t_n ,String t_usn,String t_pwd,String t_ads,
			String t_ph,String t_mble)
	{
		name = t_n;
		username =t_usn;
		password =t_pwd;
		address =t_ads;
		phone =t_ph;
		mobile =t_mble;		
	}
	public String getname()
	{
		return name;
	}
	public String getusername()
	{
		return username;
	}
	public String getaddress()
	{
		return address;
	}
	public String getphone()
	{
		return phone;
	}
	public String getmobile()
	{
		return mobile;
	}
}
