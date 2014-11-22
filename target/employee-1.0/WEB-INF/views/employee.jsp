<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>List of Employers</title>
    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.1/themes/black-tie/jquery-ui.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>

</head>
<body>
    <div style="width: 95%; margin: 0 auto;">

        <div id="employeeDialog" style="display: none;">
            <%@include file="forms/employeeForm.jsp"%>
        </div>

        <h1>List of Employers</h1>
        <button class="pure-button pure-button-primary" id="showDialog" onclick="addEmployee()">
            Add employee
        </button>
        <a href="search" class="pure-button pure-button-primary">Search Employee</a>
        <br>
        <table id="contactTableResponse" class="pure-table pure-table-striped ">
            <thead>
                <tr>
                    <th width="12%">First Name</th>
                    <th width="12%">Last Name</th>
                    <th width="12%">Second Name</th>
                    <th width="12%">Age</th>
                    <th width="18%">Experience</th>
                    <th width="18%">Description</th>
                    <th width="12%"></th>
                </tr>
            </thead>
            <tbody>
                <c:if test="${!empty employee}">
                    <c:forEach var="empl" items="${employeeList}">
                        <tr id="tr_${empl.id}">
                            <td>${empl.firstName}</td>
                            <td>${empl.lastName}</td>
                            <td>${empl.secondName}</td>
                            <td>${empl.age}</td>
                            <td>${empl.experience}</td>
                            <td>${empl.description}</td>
                            <td>
                                <nobr>
                                    <button class="pure-button pure-button-primary" onclick="editEmployee(${empl.id})">Edit</button>
                                    <a href="delete/${empl.id}" class="pure-button pure-button-primary">Delete</a>
                                </nobr>
                            </td>
                        </tr>

                    </c:forEach>
                </c:if>
            </tbody>
        </table>
    </div>
</body>
</html>
