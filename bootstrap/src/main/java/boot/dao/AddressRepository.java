package boot.dao;

import org.springframework.data.repository.CrudRepository;

import boot.model.Address;

public interface AddressRepository extends CrudRepository<Address, Integer>{

}
