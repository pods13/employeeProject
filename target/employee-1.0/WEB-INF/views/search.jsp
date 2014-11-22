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
        <h1>Search employee</h1>
        <br>
        <div id="searchForm">
            <%@include file="forms/searchForm.jsp"%>
        </div>
        <table id="resultSearchTable" class="pure-table pure-table-striped ">
            <thead>
            <tr>
                <th width="12%">First Name</th>
                <th width="12%">Last Name</th>
                <th width="12%">Second Name</th>
                <th width="12%">Age</th>
                <th width="18%">Experience</th>
                <th width="18%">Description</th>
            </tr>
            </thead>
            <tbody id="bodyResultSearchTable">

            </tbody>
        </table>
    </div>

</body>
</html>
