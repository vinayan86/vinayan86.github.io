<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<body>
	<%@ include file="Admin_header.jsp"%>



	<div class="container" align="left">
		<form action="addcar"  method="post">
			<div class="card text-dark" style="width: 45%; background: #9e9e9e33;">
				<div class="card-header">
					Car Details....
					<button style="float: right;" type="submit" class="btn btn-primary">Add
						Details</button>
				</div>
				<div class="card-body">
					<h5 class="card-title"></h5>

					<div class="form-row">
						<div class="form-group col-md-8">

							<input type="text" class="form-control" autofocus=""
								autocapitalize="" name="licence_number"
								placeholder="License Number">
						</div>
						<div class="form-group col-md-4">

							<select name="engine_type" class="form-control">
								<option value="0" selected>Engine Type</option>
								<option value="Electric">Electric</option>
								<option value="Gas">Gas</option>
								<option value="Petrol">Petrol</option>
								<option value="Diesel">Diesel</option>

							</select>
						</div>

					</div>

					<div class="form-row">
						<div class="form-group col-md-4">

							<input type="number" class="form-control" name="seat_count"
								max="8" min="4" placeholder="seat count">
						</div>

						<div class="form-group col-md-4">
							<select class="form-control" name="convertible"  >
							<option value="0">Covertiable</option>
							<option value="Yes">Yes</option>
							<option value="No">No</option>
							</select>
							
						</div>

						<div class="form-group col-md-4">

							<select name="rating" class="form-control">
								<option selected>Rating</option>
								<option>5</option>
								<option>4</option>
								<option>3</option>
								<option>2</option>
								<option>1</option>
							</select>
						</div>
					</div>
					<hr>
					Manufacture Details...
					<%
					String com = "Acura: Honda Motor Company,Alfa Romeo: Fiat Chrysler Automobiles,Audi: Volkswagen Group,BMW: BMW Group,Bentley: Volkswagen Group,Buick: General Motors,Cadillac: General Motors,Chevrolet: General Motors,Chrysler: Fiat Chrysler Automobiles,Dodge: Fiat Chrysler Automobiles,Fiat: Fiat Chrysler Automobiles,Ford: Ford Motor Co.,GMC: General Motors,Genesis: Hyundai Motor Group,Honda: Honda Motor Co.,Hyundai: Hyundai Motor Group,Infiniti: Renault-Nissan-Mitsubishi Alliance,Jaguar: Tata Motors,Jeep: Fiat Chrysler Automobiles,Kia: Hyundai Motor Group,Land Rover: Tata Motors,Lexus: Toyota Motor Corp.,Lincoln: Ford Motor Co.,Lotus: Zhejiang Geely Holding Group,Maserati: Fiat Chrysler Automobiles,Mazda: Mazda Motor Corp.,Mercedes-Benz: Daimler AG,Mercury*: Ford Motor Co.,Mini: BMW Group,Mitsubishi: Renault-Nissan-Mitsubishi Alliance,Nissan: Renault-Nissan-Mitsubishi Alliance,Polestar: Zhejiang Geely Holding Group, Pontiac*: General Motors,Porsche: Volkswagen Group,Ram: Fiat Chrysler Automobiles,Rolls-Royce: BMW Group,Saab: brand owned by Saab AB; assets owned by National Electric Vehicle Sweden,Saturn*: General Motors,Scion*: Toyota Motor Corp.,Smart: Daimler AG,Subaru: Subaru Corp.,Suzuki*: Suzuki Motor Corp. Owns a small stake in Toyota.,Tesla: Tesla Inc.,Toyota: Toyota Motor Corp.,Volkswagen: Volkswagen Group,Volvo: Zhejiang Geely Holding Group";
					String str[] = com.split(",");
					List<String> al = new ArrayList<String>();
					al = Arrays.asList(str);
				
					  
					
					%>
					<hr>
					<div class="form-row">
						<div class="form-group col-md-8">
							<select name="manufacture" class="form-control">
								<option selected>select a Company</option>
								<% for(String s: al){%>
								<option value="<%= s%>"><%= s%></option>
								<%} %>
								<option value="Other">Other</option>
							</select>
						</div>
					</div>
					<input type="text" hidden value="0" name="status">
		</form>
		<p class="card-text"></p>

	</div>

	</div>

	</div>
	
	
	
	
</body>
</html>