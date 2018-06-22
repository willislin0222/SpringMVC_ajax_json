<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SpringMVC_AJAX_JSON DEMO</title>
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.3.1.min.js"></script>
</head>
<body>
	姓名<input id="name" type="name"><br>
	地址<input id="address" type="address">
	<input id="send" type="submit" value="送出">
</body>
</html>
<script>
$(document).ready(function(){
	$('#send').click(function(){
		$.ajax({
			    type: "POST",
			    url: "<%=request.getContextPath()%>/converjson/conver",
			    data: {
			    	   name: $('#name').val(),
    		    	   address: $('#address').val()
			    	  },
				cache: false,
				success: function(jsonData){
					var list = eval(jsonData);
					alert(list.name);
					alert(list.address);
					alert("success")
				},
			    error: function(xhr, ajaxOptions, thrownError)
			    { 
			    	alert("error")
			    }
		 });
	});
	
});
</script>