package com.un1acker.employee.service;

import com.un1acker.employee.dao.EmployeeDAO;
import com.un1acker.employee.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService{

    @Autowired
    private EmployeeDAO employeeDAO;

    @Transactional
    public void addEmployee(Employee employee) {
        employeeDAO.addEmployee(employee);
    }

    @Transactional
    public void editEmployee(Employee employee) {
        employeeDAO.editEmployee(employee);
    }

    @Transactional
    public void deleteEmployee(Integer employeeId) {
        employeeDAO.deleteEmployee(employeeId);
    }

    @Transactional
    public Employee getEmployee(Integer employeeId) {
        return employeeDAO.getEmployee(employeeId);
    }

    @Transactional
    public List getAllEmployee() {
        return employeeDAO.getAllEmployee();
    }

    @Transactional
    public List searchEmployee(String whatSearch, String searchBy) {
        return employeeDAO.searchEmployee(whatSearch, searchBy);
    }


}
