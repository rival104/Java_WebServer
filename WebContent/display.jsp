<%@ include file="header.jsp"%>

<div class="container">
	<div class="row justify-content-md-center">
		<h2>Display Employee Info</h2>
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
				<tr>
					<th scope="row">1</th>
						<td>${emp.getId()}</td>
						<td>${emp.name}</td>
						<td>${emp.sal}</td>
					</tr>
				
			</tbody>
		</table>
		<a class="btn btn-secondary" href="select.html" role="button">Go Back</a>
	</div>

</div>

<%@ include file="footer.jsp"%>