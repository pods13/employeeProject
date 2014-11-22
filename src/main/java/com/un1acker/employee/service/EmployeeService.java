package com.un1acker.employee.service;

import com.un1acker.employee.model.Employee;

import java.util.List;

public interface EmployeeService {
    public void addEmployee(Employee employee);
    public void editEmployee(Employee employee);
    public void deleteEmployee(Integer employeeId);
    public Employee getEmployee(Integer employeeId);
    public List getAllEmployee();
    public List searchEmployee(String whatSearch, String searchBy);
}
