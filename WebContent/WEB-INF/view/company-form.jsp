<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="ui segment">

	<h3>Add a Company</h3>

	<form:form action="saveCompany" modelAttribute="company" method="POST"
		class="ui form">
		<div class="field">
			<label>First Name</label>
			<form:input path="firstName" />
		</div>
		<div class="field">
			<label>Last Name</label>
			<form:input path="lastName" />
		</div>
		<div class="field">
			<label>Email</label>
			<form:input path="email" />
		</div>
		<div class="field">
			<label>Username</label>
			<form:input path="username" />
		</div>
		<div class="field">
			<label>Password</label>
			<form:input path="password" />
		</div>
		<div class="field">
			<label>Company Name</label>
			<form:input path="company_name" />
		</div>
		<div class="field">
			<label>Enabled</label>
			<form:input path="enabled" />
		</div>
		<button class="ui button" type="submit">Save</button>
	</form:form>

</div>