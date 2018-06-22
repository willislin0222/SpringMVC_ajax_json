package com.converjson.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.converjson.model.User;

@Controller
@ResponseBody 
@RequestMapping(value="/converjson")
public class JsonController {
	
	private User user;
	
	@RequestMapping(value="conver",method = RequestMethod.POST)
	public Map<String, Object> converjson(HttpServletResponse response,
			@RequestParam("name") String name,@RequestParam("address") String address){
		
		Map<String, Object> map = null;  
		System.out.println(name);
		map = new HashMap<String, Object>();  
		map.put("name", name); 
		map.put("address", address); 
		
		return map;
		
		
	}
	


}
