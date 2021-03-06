<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/view/jspf/header.jspf" %>
<body>
	<div class="ui segment">
	<h3>List of Job Offers</h3>

	<!--  add our html table here -->
	<table class="ui celled  striped table">
		<thead>
			<th>Company Name</th>
			<th>Job Name</th>
			<th>Available Positions</th>
			<th>Job Description</th>
		<sec:authorize access="hasRole('ROLE_OFFICE')">
			<th>Accepted</th>
			<th>Actions</th>
		</sec:authorize>
		</thead>
		<!-- loop over and print our customers -->
		<c:forEach var="tempjob_offers" items="${job_offers}">
		
			<tr>
				<td>${tempjob_offers.companyName}</td>
				<td>${tempjob_offers.jobName}</td>
				<td>${tempjob_offers.availablePositions}</td>
				<td>${tempjob_offers.jobDescription}</td>
			<sec:authorize access="hasRole('ROLE_OFFICE')">	
				<td>${tempjob_offers.enabled}</td>
			</sec:authorize>	
				
				<sec:authorize access="hasRole('ROLE_OFFICE')">
			<td><a href="<c:url value="deleteJob_offers/${tempjob_offers.id}"></c:url>"><button type="submit" id="${tempjob_offers.id}"
					name="deleteJob_offers" style="background-color: #EF5353; 
`								border: none;								
  								color: black;							
  								text-align: center;
 								text-decoration: none;
 								 display: inline-block;
 								 font-size: 16px;
 								 cursor: pointer;
  								-webkit-transition-duration: 0.4s; /* Safari */
 								 transition-duration: 0.4s; "><i class="remove user icon"></i>
					 Delete</button></a>
					 
<c:if test="${tempjob_offers.enabled=='0'}">

<a href="<c:url value="accepted/${tempjob_offers.id}"></c:url>"><button
								type="submit" id="${tempjob_offers.id}" name="accepted" 
								style="background-color: #4AF536; /* Green */
`								border: none;								
  								color: black;							
  								text-align: center;
 								text-decoration: none;
 								 display: inline-block;
 								 font-size: 16px;
 								 cursor: pointer;
  								-webkit-transition-duration: 0.4s; /* Safari */
 								 transition-duration: 0.4s; ">
								<i class="remove user icon"></i> Accept 
							</button></a> </td>
</c:if>
				</sec:authorize>
			</tr>
		</c:forEach>
	</table>
</div>


<%@ include file="/WEB-INF/view/jspf/footer.jspf" %>