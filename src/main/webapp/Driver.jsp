<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<%@ include file="Admin_header.jsp"%>



	<div class="container" align="left">
		<form action="adddriver" method="post">
			<div class="card text-center text-white" style="width: 65%; background:#9e9e9e33;">
				<div class="card-header">
					<h4>Driver Details....</h4>
					<button style="float: right;" type="submit" class="btn btn-primary">Add
						Details</button>
				</div>
				<div class="card-body">
					<h5 class="card-title"></h5>
	
					<form>
  <div class="form-row">
    <div class="form-group col-md-6">
     
      <input type="text"  class="form-control" name="driver_name" placeholder="Driver Name">
    </div>
    
   <div class="form-group col-md-6">
  <div class="input-group mb-2">
        <div class="input-group-prepend">
          <div class="input-group-text">Date Of Birth</div>
        </div>
        <input type="date" class="form-control" name="dob" placeholder="Username">
      </div>
    </div>
  </div>
  <div class="form-row">
     <div class="form-group col-md-6">
    
    <input type="text" class="form-control" name="user_mobile"  placeholder="Mobile Number">
    
  </div>
  <div class="form-group col-md-6">

    <input type="email" class="form-control" name="user_email"  placeholder="Email ">
    
  </div>
</div>
  <div class="form-group">

    <textarea class="form-control" name="address" placeholder="Address" rows="4"></textarea>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-6">
 
      <input type="text" placeholder="District" name="district" class="form-control">
    </div>
    
    <div class="form-group col-md-4">
     
      <input type="text" class="form-control" placeholder="Zip Code" name="zipcode">
    </div>
  </div>
  
			
					<div class="form-row">
					 <div class="form-group col-md-6">
     
      <input type="text" class="form-control" name="licence_number" placeholder="Licence Number">
    </div>
     <div class="form-group col-md-6">
     
      <input type="date" class="form-control" name="licence_ExpDate" placeholder="Date">
    </div>
    </div>
					<input type="text" hidden value="Offline" name="online_status">
					<input type="text" hidden value="abctaxi" name="user_password">
					<input type="text" hidden value="user" name="user_type">
		</form>
		<p class="card-text"></p>

	</div>

	</div>

	</div>
	
	
	
	
</body>
</html>