package boot.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity(name="teams")
public class Team implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(length=45)
	private String name;
	@Column(length=45)
	private String liga;
	@Temporal(TemporalType.DATE)
	@Column(name="date_created")
	private Date dateCreated;
	private boolean existence;
	private Long gol;
	
	public Team( String name, String liga, Date dateCreated, boolean existence,Long gol){
	super();
	this.name=name;
	this.liga=liga;
	this.dateCreated=dateCreated;
	this.existence=existence;
	this.gol=gol;

	} 
	
	public Team(){
		this("","",new Date(), false,0L);
	}
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLiga() {
		return liga;
	}

	public void setLiga(String liga) {
		this.liga = liga;
	}

	public Date getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	public boolean isExistence() {
		return existence;
	}

	public void setExistence(boolean existence) {
		this.existence = existence;
	}
	

	public Long getGol() {
		return gol;
	}

	public void setGol(Long gol) {
		this.gol = gol;
	} 

	@Override
	public String toString() {
		return "Team [id=" + id + ", name=" + name + ", liga=" + liga + ", dateCreated=" + dateCreated + ", existence="
				+ existence + ", gol=" + gol + "]";
	}

	
}