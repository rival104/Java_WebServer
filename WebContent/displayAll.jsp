<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>

<div class="container">
	<div class="row justify-content-md-center">
		<h2>Display All Employee</h2>
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">#</th>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Salary</th>
				</tr>
			</thead>
			<tbody>
				 <c:forEach items="${empList}" var = "emp" varStatus="loop">
        			<tr>
						<th scope="row">${loop.index + 1}</th>
						<td>${emp.getId()}</td>
						<td>${emp.name}</td>
						<td>${emp.sal}</td>
					</tr>
      			</c:forEach>
			</tbody>
		</table>
		<a class="btn btn-secondary" href="index.html" role="button">Go Back</a>
	</div>

</div>

<%@ include file="footer.jsp"%>