<%@page import="java.util.ArrayList"%>
<%@page import="com.abctaxi.bo.Driver"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<%@ include file="Admin_header.jsp"%>
<div class="container">
	<div class="row">

		<%
					if (request.getAttribute("Details") != null) {
						ArrayList<Driver> mf = (ArrayList) request.getAttribute("Details");

						Iterator<Driver> iterator = mf.iterator();
						while (iterator.hasNext()) {
							Driver mfd = iterator.next();
				%>
		<div class="col-sm-12 col-md-12">
			<div class="card bg-light mb-4 text-center"
				style="max-width: 100rem;">
				<div class="card-header">
					<i class="fas fa-car"></i>&nbsp;
					<h5><%=mfd.getDriver_name()%></h5>

				</div>
				<div class="card-body">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Licence Number</th>
								<th scope="col">Expiry Date</th>
								<th scope="col">Address</th>
								<th scope="col">District</th>
								<th scope="col">Zip Code</th>
								<th scope="col">Mobile Number</th>
								<th scope="col">Email</th>
								<th scope="col">Date Of Birth</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th style="color: green"><%=mfd.getOnline_status()%></th>
								<th scope="row"><%=mfd.getLicence_number()%></th>
								<td><%=mfd.getLicence_ExpDate()%></td>
								<td><%=mfd.getAddress()%></td>

								<td><%=mfd.getDistrict()%></td>
								<td><%=mfd.getZipcode()%></td>
								<td><%=mfd.getMobile()%></td>
								<td><%=mfd.getEmail()%></td>

								<td><%=mfd.getDob()%></td>
							</tr>

						</tbody>
					</table>
					</div>

					<div class="modal-footer text-center ">
						
					</div>
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