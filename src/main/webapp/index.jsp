<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<%@ include file = "header.jsp" %>

    <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">

      </div>

    <div class="container">
<% if(request.getAttribute("error")!=null) {%>
<div class="alert alert-danger" id="alert" role="alert">
You are not Authorized person to Sign in.....
</div>
<script type="text/javascript">

setInterval(function(){ 
$('#alert').hide();


}, 3000);
</script>

<%} %>

    </div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<%@ include file = "login.jsp" %>   


  </body>
</html>
