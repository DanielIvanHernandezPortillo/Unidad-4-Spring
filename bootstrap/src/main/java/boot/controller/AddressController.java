package boot.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import boot.model.Address;

import boot.service.AddressService;


@Controller
public class AddressController {
  
	@Autowired
	private AddressService addressService;
	
	@GetMapping("address")
	public String home(HttpServletRequest request){
		request.setAttribute("mode", "MODE_HOME");
		return "address";
	}
	
	@GetMapping("/all-addresses")
	public String allAddresses(HttpServletRequest request){
		request.setAttribute("addresses", addressService.findAll());
		request.setAttribute("mode", "MODE_ADDRESSES");
		return "address";
	}
	
	@GetMapping("/new-address")
	public String newAddress(HttpServletRequest request){
		request.setAttribute("mode", "MODE_NEW");
		return "address";
	}
	 
	@PostMapping("/save-address")
	public String saveAddress(@ModelAttribute Address address, BindingResult bindingResult, HttpServletRequest request){
		addressService.save(address);
		request.setAttribute("addresses", addressService.findAll());
		request.setAttribute("mode", "MODE_ADDRESSES");
		return "address";
	}
	
	@GetMapping("/update-address")
	public String updateAddress(@RequestParam int id, HttpServletRequest request){
		request.setAttribute("address", addressService.findAddress(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "address";
	}
	
	@GetMapping("/delete-address")
	public String deleteAddress(@RequestParam int id, HttpServletRequest request){
		addressService.delete(id);
		request.setAttribute("addresses", addressService.findAll());
		request.setAttribute("mode", "MODE_ADDRESSES");
		return "address";
	}
	
 }