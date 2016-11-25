package boot.service;

import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import boot.dao.AddressRepository;
import boot.model.Address;


@Service @Transactional
public class AddressService {
	private final AddressRepository addressRepository;
	
	public AddressService(AddressRepository addressRepository){
		super();
		this.addressRepository= addressRepository;
	}
	
	public List <Address> findAll(){
		List<Address> Addresses = new ArrayList<Address>();
		for(Address address : addressRepository.findAll() ){
			Addresses.add(address);
		}
		return Addresses;
	}
	
	public void save(Address address){
		addressRepository.save(address);
	}
	
	public void delete (int id){
		addressRepository.delete(id);
	}
	
	public Address findAddress(int id){
	return addressRepository.findOne(id);
	}
	
}