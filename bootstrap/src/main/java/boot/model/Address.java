package boot.model;

import java.io.Serializable;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity(name="addresses")
public class Address implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(name="line_3_area_locality" ,length=100)
	private String line3AreaLocality;
	@Column(length=100)
	private String city;
	@Column(name="state_province_country", length=100)
	private String stateProvinceCountry;
	@Column(length=100)
	private String country;
	@Column(name="line_1_number_building",length=100)
	private Long line1NumberBuilding;
	@Column(name="line_2_number_street",length=100)
	private Long line2NumberStreet;
	@Column(name="zip_postcode")
	private Long zipPostcode;
	
	public Address( String line3AreaLocality, String city, String stateProvinceCountry,String country,Long line1NumberBuilding, Long line2NumberStreet,Long zipPostcode){
	super();
	this.line3AreaLocality=line3AreaLocality;
	this.city=city;
	this.stateProvinceCountry=stateProvinceCountry;
	this.country=country;
	this.line1NumberBuilding=line1NumberBuilding;
	this.line2NumberStreet=line2NumberStreet;
	this.zipPostcode=zipPostcode;
	} 
	
	public Address(){
		this("","","","",0L,0L,0L);
	}
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLine3AreaLocality() {
		return line3AreaLocality;
	}

	public void setLine3AreaLocality(String line3AreaLocality) {
		this.line3AreaLocality = line3AreaLocality;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getStateProvinceCountry() {
		return stateProvinceCountry;
	}

	public void setStateProvinceCountry(String stateProvinceCountry) {
		this.stateProvinceCountry = stateProvinceCountry;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Long getLine1NumberBuilding() {
		return line1NumberBuilding;
	}

	public void setLine1NumberBuilding(Long line1NumberBuilding) {
		this.line1NumberBuilding = line1NumberBuilding;
	}

	public Long getLine2NumberStreet() {
		return line2NumberStreet;
	}

	public void setLine2NumberStreet(Long line2NumberStreet) {
		this.line2NumberStreet = line2NumberStreet;
	}

	public Long getZipPostcode() {
		return zipPostcode;
	}

	public void setZipPostcode(Long zipPostcode) {
		this.zipPostcode = zipPostcode;
	}

	@Override
	public String toString() {
		return "Address [id=" + id + ", line3AreaLocality=" + line3AreaLocality + ", city=" + city
				+ ", stateProvinceCountry=" + stateProvinceCountry + ", country=" + country + ", line1NumberBuilding="
				+ line1NumberBuilding + ", line2NumberStreet=" + line2NumberStreet + ", zipPostcode=" + zipPostcode
				+ "]";
	}

	
	

	

}
