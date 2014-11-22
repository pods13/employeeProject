package com.un1acker.employee.controller;

import com.un1acker.employee.model.Employee;
import com.un1acker.employee.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/")
    public String setupForm(Map<String, Object> map) {
        Employee employee = new Employee();
        map.put("employee", employee);
        map.put("employeeList", employeeService.getAllEmployee());
        return "employee";
    }

    @RequestMapping(value = "/search")
    public String searchFormInit(){
        return "search";
    }

    @RequestMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable("id") Integer id) {
        employeeService.deleteEmployee(id);
        return "redirect:/";
    }

    @RequestMapping(value="/save", method=RequestMethod.POST)
    @ResponseBody
    public Employee saveEmployee(Employee employee) {
        employeeService.addEmployee(employee);
        return employee;
    }

    @RequestMapping(value = "/get/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Employee getEmployeeById(@PathVariable("id") Integer id) {
        Employee employee = employeeService.getEmployee(id);
        return employee;
    }

    @RequestMapping(value="/update", method=RequestMethod.POST)
    @ResponseBody
    public Employee updateEmployee(Employee employee) {
        employeeService.editEmployee(employee);

        return employee;
    }

    @RequestMapping(value="/search/{whatSearch}/{searchBy}", method = RequestMethod.GET)
    @ResponseBody
    public List<Employee> searchEmployee(@PathVariable("whatSearch") String whatSearch,
                                       @PathVariable("searchBy") String searchBy) {
        List<Employee> resultSearch = employeeService.searchEmployee(whatSearch, searchBy);
        return resultSearch;
    }


}
