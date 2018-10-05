package puppy.dto;

import java.sql.Date;

public class PuppyDTO {
	private String userid; 
	private String pwd; 
	private String name; 
	private String email; 
	private String hp;
	private String address;
	private Date join_date;
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public Date getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	
	public PuppyDTO() {
	}

	public PuppyDTO(String userid, String pwd, String name, String email, String hp, String address, Date join_date) {
		this.userid = userid;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.hp = hp;
		this.address = address;
		this.join_date = join_date;
	}

	@Override
	public String toString() {
		return "PuppyDTO [userid=" + userid + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", hp=" + hp
				+ ", address=" + address + ", join_date=" + join_date + "]";
	}
}