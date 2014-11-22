package com.un1acker.employee.dao;

import com.un1acker.employee.model.Employee;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addEmployee(Employee employee) {
        sessionFactory.getCurrentSession().save(employee);
    }

    @Override
    public void editEmployee(Employee employee) {
        sessionFactory.getCurrentSession().update(employee);
    }

    @Override
    public void deleteEmployee(Integer employeeId) {
        sessionFactory.getCurrentSession().delete(getEmployee(employeeId));
    }

    @Override
    public Employee getEmployee(Integer employeeId) {
        return (Employee)sessionFactory.getCurrentSession().get(Employee.class, employeeId);
    }

    @Override
    public List getAllEmployee() {
        return sessionFactory.getCurrentSession().createQuery("from com.un1acker.employee.model.Employee").list();
    }

    @Override
    public List searchEmployee(String whatSearch, String searchBy) {
        return sessionFactory.getCurrentSession().createQuery("from com.un1acker.employee.model.Employee E where E." + whatSearch + " = '" + searchBy + "'" ).list();
    }
}
