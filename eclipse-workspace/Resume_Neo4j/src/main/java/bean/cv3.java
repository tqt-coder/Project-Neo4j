package bean;

public class cv3 {
	private int id1;
	private String work;
	private String dep;
	private float time;
	public cv3() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId1() {
		return id1;
	}
	public void setId1(int id1) {
		this.id1 = id1;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getDep() {
		return dep;
	}
	public void setDep(String dep) {
		this.dep = dep;
	}
	public float getTime() {
		return time;
	}
	public void setTime(float time) {
		this.time = time;
	}
	public cv3(int id1, String work, String dep, float time) {
		super();
		this.id1 = id1;
		this.work = work;
		this.dep = dep;
		this.time = time;
	}
}
