<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="pure-form">
        <select id="criteria">
            <option value="firstName">first_name</option>
            <option value="lastName">last_name</option>
            <option value="secondName">second_name</option>
            <option value="age">age</option>
            <option value="experience">experience</option>
            <option value="description">description</option>
        </select>

        <input placeholder="Search" id="searchQueryInput">
        <button class="pure-button pure-button-primary" onclick="searchEmployee($('#criteria option:selected').val())">Search</button>
</div>