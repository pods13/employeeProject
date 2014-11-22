function addEmployee() {

    $('#employeeDialog').dialog("option", "buttons", [
        {
            text : "Save",
            click : function (e) {
                $.post('/save', $('#employeeForm').serialize(), function(employee) {
                    $('#contactTableResponse').last().append(
                            '<tr id="tr_' + employee.id + '">' +
                            '<td>' + employee.firstName + '</td>' +
                            '<td>' + employee.lastName + '</td>' +
                            '<td>' + employee.secondName +'</td>' +
                            '<td>' + employee.age + '</td>' +
                            '<td>' + employee.experience + '</td>' +
                            '<td>' + employee.description +'</td>' +
                            '<td>' +
                            '<nobr>' +
                            '<button class="pure-button pure-button-primary" onclick="editEmployee(' + employee.id + ')"> Edit</button>' +
                            ' <a href="delete/'  + employee.id + '" class="pure-button pure-button-primary">Delete</a>' +
                            '</nobr>' +
                            '</td>' +
                            '</tr>'
                    );
                });
                $('#employeeDialog').dialog('close');
                clearInputs();
                e.preventDefault();
            }
        }]);
    $('#employeeDialog').dialog('open');
};

function editEmployee(id) {
    $.get("/get/" + id, function (employee) {
        $('#idInput').val(employee.id);
        $('#firstNameInput').val(employee.firstName);
        $('#lastNameInput').val(employee.lastName);
        $('#secondNameInput').val(employee.secondName);
        $('#ageInput').val(employee.age);
        $('#experienceInput').val(employee.experience);
        $('#descriptionInput').val(employee.description);
    });

    $('#employeeDialog').dialog("option", "buttons", [
        {
            text : "Save",
            click : function (e) {
                $.post('/update', $('#employeeForm').serialize(), function(employee) {
                    var updateEmployee =
                        '<td>' + employee.firstName + '</td>' +
                        '<td>' + employee.lastName + '</td>' +
                        '<td>' + employee.secondName +'</td>' +
                        '<td>' + employee.age + '</td>' +
                        '<td>' + employee.experience + '</td>' +
                        '<td>' + employee.description +'</td>' +
                        '<td>' +
                        '<nobr>' +
                        '<button class="pure-button pure-button-primary" onclick="editEmployee(' + employee.id + ')"> Edit</button>' +
                        ' <a href="delete/'  + employee.id + '" class="pure-button pure-button-primary">Delete</a>' +
                        '</nobr>' +
                        '</td>';

                    $('#tr_' + employee.id).html(updateEmployee);
                });
                $('#employeeDialog').dialog('close');
                clearInputs();
                e.preventDefault();
            }
        }]);
    $('#employeeDialog').dialog('open');
};

function searchEmployee(selectedCriteriaOption) {
    clearResultSearch();
    $.get('/search/' + selectedCriteriaOption + '/' + $('#searchQueryInput').val(), function(employers) {
        $.each(employers, function(index, employee) {
            $('#resultSearchTable').append(
                    '<tr id="tr_' + employee.id + '">'    +
                    '<td>' + employee.firstName + '</td>' +
                    '<td>' + employee.lastName + '</td>' +
                    '<td>' + employee.secondName +'</td>' +
                    '<td>' + employee.age + '</td>' +
                    '<td>' + employee.experience + '</td>' +
                    '<td>' + employee.description +'</td>' +
                    '</tr>'
            )
        });

    });
    clearInputs();
};

$(function() {
    $( "#employeeDialog" ).dialog({
        autoOpen: false,
        width:500,
        modal:true
    });

});

function clearResultSearch() {
    $('#bodyResultSearchTable').empty();
    $('#criteria').val("firstName");
};

function clearInputs() {
    $('input[id*="Input"]').each(function () {
        $(this).val('');
    });
};
