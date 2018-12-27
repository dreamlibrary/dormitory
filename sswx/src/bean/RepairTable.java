package bean;

public class RepairTable {
	private String name;
	
	private String build;
	private String domotry;
	private String tell;
	private String week;
	private String time;
	private String type;
	private String discript;
	public RepairTable(){
		
	}
	public RepairTable(String name,String build,String domotry,String tell,String week,String time,String type,String discript){
		this.name=name;
		this.build=build;
		this.domotry=domotry;
		this.tell=tell;
		this.week=week;
		this.time=time;
		this.type=type;
		this.discript=discript;
	}
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBuild() {
		return build;
	}
	public void setBuild(String build) {
		this.build = build;
	}
	public String getDomotry() {
		return domotry;
	}
	public void setDomotry(String domotry) {
		this.domotry = domotry;
	}
	public String getTell() {
		return tell;
	}
	public void setTell(String tell) {
		this.tell = tell;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDiscript() {
		return discript;
	}
	public void setDiscript(String discript) {
		this.discript = discript;
	}
	
	
	
}
