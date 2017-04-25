<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include.jsp"%>
<div class="content">
	<div class="portlet light">
		<c:if test="${not empty success}">
			<c:out value="${success}" />
		</c:if>
		<!-- BEGIN REGISTRATION FORM -->
		<form:form method="POST" class="register-form"
			action="registerStudent" modelAttribute="loginUser">
			<h3>Sign Up</h3>
			<p class="hint">Enter student information below:</p>
			<div class="form-group">
				<form:label path="firstName"
					class="control-label visible-ie8 visible-ie9">First Name</form:label>
				<form:input path="firstName" class="form-control placeholder-no-fix"
					type="text" placeholder="First Name" name="firstName" />
				<form:errors path="firstName" cssClass="text-danger" />
			</div>
			<div class="form-group">
				<form:label path="lastName"
					class="control-label visible-ie8 visible-ie9">Last Name</form:label>
				<form:input path="lastName" class="form-control placeholder-no-fix"
					type="text" placeholder="Last Name" name="lastName" />
				<form:errors path="lastName" cssClass="text-danger" />
			</div>
			<div class="form-group">
				<form:label path="email"
					class="control-label visible-ie8 visible-ie9">Email</form:label>
				<form:input path="email" class="form-control placeholder-no-fix"
					type="text" placeholder="Email" name="email" />
				<form:errors path="email" cssClass="text-danger" />
			</div>
			<div class="form-group">
				<form:label path="studentId"
					class="control-label visible-ie8 visible-ie9">Student ID</form:label>
				<form:input path="studentId" class="form-control placeholder-no-fix"
					type="text" placeholder="Student ID" name="studentId" />
				<form:errors path="studentId" cssClass="text-danger" />
			</div>
			<div class="form-group">
				<form:label path="entry"
					class="control-label visible-ie8 visible-ie9">Entry Year</form:label>
				<form:input path="entry" class="form-control placeholder-no-fix"
					type="number" placeholder="Entry year" name="entry" />
				<form:errors path="entry" cssClass="text-danger" />
			</div>
			<form:hidden path="enabled" value="FALSE" />
			<div class="form-actions">
				<button type="submit" id="register-submit-btn"
					class="btn btn-success uppercase pull-right">Submit</button>
			</div>
			<br/><br/>
		</form:form>
	</div>
</div>
