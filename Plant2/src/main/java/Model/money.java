package Model;



public class money {
	public Integer id;
	public String kind;
	public Integer USD;
	public Integer NTD;
	public Integer AUD;
	public Integer NZD;
	public Integer HKD;
	public Integer sum;
	
	public money() {
		super();
		
	}
	public money(String kind, Integer US, Integer NT, Integer AU, Integer NZ, Integer HK) {
		
		this.kind = kind;
		USD = US;
		NTD = NT;
		AUD = AU;
		NZD = NZ;
		HKD = HK;
	}
	public Integer getsum()
	{
		return USD*30 + NTD*1 + AUD*19 + NZD*18 + HKD*3 ;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getKind()
	{
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public void setSum(Integer sum) {
		this.sum = sum;
	}
	public void setUSD(Integer US) {
		USD = US;
	}
	public void setNTD(Integer NT) {
		NTD = NT;
	}
	public void setAUD(Integer AU) {
		AUD = AU;
	}
	public void setNZD(Integer NZ) {
		NZD = NZ;
	}
	public void setHKD(Integer HK) {
		HKD = HK;
	}
	public Integer getUSD()
	{
		return USD;
	}
	public Integer getNTD()
	{
		return NTD;
	}
	public Integer getAUD()
	{
		return AUD;
	}
	public Integer getNZD()
	{
		return NZD;
	}
	public Integer getHKD()
	{
		return HKD;
	}
	
	public static int SqlToInt(String str)
		{
			int temp = 0 ;
			if(str !="" && str != null)
			{
				temp = Integer.parseInt(str);
			}
			return temp;
		}

}
