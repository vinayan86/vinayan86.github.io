<%@page import="java.util.ArrayList"%>
<%@page import="com.abctaxi.bo.Car"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ include file="driver_header.jsp"%>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
<body>
	<div class="container">
		<div class="row">
		
				<%
					if (request.getAttribute("cars") != null) {
						ArrayList<Car> mf = (ArrayList) request.getAttribute("cars");

						Iterator<Car> iterator = mf.iterator();
						while (iterator.hasNext()) {
							Car mfd = iterator.next();
				%>
	<div class="col-sm-6 col-md-4">
				<div class="card bg-light mb-4 text-center" style="max-width: 26rem;">
					<div class="card-header">
						<i class="fas fa-car"></i>&nbsp;
						<h5><%=mfd.getManufacture()%></h5>
						<p class='fas fa-star inline'
							style='font-size: 20px; color: red; float: right;'>
							<br><%=mfd.getRating()%></p>
					</div>
					<div class="card-body">
						<h5 class="card-title"><%=mfd.getLicence_number()%></h5>
						<p class="card-text"><%=mfd.getEngine_type()%>
							&nbsp; Engine
						</p>
						<%
							if (mfd.getConvertible().contains("Yes")) {
						%>
						<p class="card-text">Convertiable</p>
						<%
							} else {
						%>
						<p class="card-text">Not Convertiable </p>
						<%
							}
						%>
						<button disabled="disabled" style="font-size: 24px"><%=mfd.getSeat_count()%>&nbsp;Seats
							<i class="fa fa-male"></i>
						</button><div class="modal-footer text-center ">
						<form action="selectcar" method="post">
						<button type="submit" class="btn btn-primary btn-lg btn-block">Select Car</button>
						<input type="text" hidden="" name="car_id" value="<%=mfd.getCar_id()%>">
						
						</form></div>
					</div>

				</div>
					</div>

				<%
					}
					}
				%>
		
			
		</div>



	</div>

</body>
</html>