<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form:form id="employeeForm" class="pure-form pure-form-aligned" commandName="employee">
    <fieldset>
        <legend></legend>
        <div class="pure-control-group">
            <label for="firstNameInput">First Name</label>
            <form:input id="firstNameInput" path="firstName" placeholder="First Name"/>
        </div>
        <div class="pure-control-group">
            <label for="lastNameInput">Last Name</label>
            <form:input id="lastNameInput" path="lastName" placeholder="Last Name"/>
        </div>
        <div class="pure-control-group">
            <label for="secondNameInput">Second Name</label>
            <form:input id="secondNameInput" path="secondName" placeholder="Second Name"/>
        </div>
        <div class="pure-control-group">
            <label for="ageInput">Age</label>
            <form:input id="ageInput" path="age" placeholder="Age" maxlength="3"/>
        </div>
        <div class="pure-control-group">
            <label for="experienceInput">Experience</label>
            <form:input id="experienceInput" path="experience" placeholder="Experience"/>
        </div>
        <div class="pure-control-group">
            <label for="descriptionInput">Description</label>
            <form:input id="descriptionInput" path="description" placeholder="Description"/>
            <form:input id="idInput" path="id" type="hidden"/>
        </div>
    </fieldset>
</form:form>

