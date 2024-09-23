package com.example.management_employee.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping("/employee")
public class EmployeeController {
    private List<Employee> employees = new ArrayList<>(
            Arrays.asList(
                    new Employee(UUID.randomUUID(), "Hoàng Văn Hải", "Nam", 15.000000, new Date(1990, 1, 15)),
                    new Employee(UUID.randomUUID(), "Trần Thị Hoài", "Nữ", 14.500000, new Date(1985, 5, 20)),
                    new Employee(UUID.randomUUID(), "Lê Văn Sỹ", "Nam", 15.500000, new Date(1992, 3, 30)),
                    new Employee(UUID.randomUUID(), "Phạm Duy Khánh", "Nữ ", 14.800000, new Date(1988, 5, 07)),
                    new Employee(UUID.randomUUID(), "Hoàng Văn Quý", "Nam", 15.200000, new Date(1995, 9, 25))
            )
    );

    @GetMapping
    public ResponseEntity<List<Employee>> getAllEmployees() {
        return ResponseEntity.ok(employees);
    }

    @PostMapping
    public ResponseEntity<Employee> createEmployee(@RequestBody Employee employee) {
        employee.setId(UUID.randomUUID());
        employees.add(employee);
        return new ResponseEntity<>(employee, HttpStatus.CREATED);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Employee> getEmployeeById(@PathVariable UUID id) {
        return employees.stream()
                .filter(employee -> employee.getId().equals(id))
                .findFirst()
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    private void updateEmployeeFields(Employee existingEmployee, Employee employeeDetails) {
        existingEmployee.setName(employeeDetails.getName());
        existingEmployee.setGender(employeeDetails.getGender());
        existingEmployee.setBirthday(employeeDetails.getBirthday());
        existingEmployee.setSalary(employeeDetails.getSalary());
    }


    @PutMapping("/{id}")
    public ResponseEntity<Employee> updateEmployee(@PathVariable UUID id, @RequestBody Employee employeeDetails) {
        return employees.stream()
                .filter(employee -> employee.getId().equals(id))
                .findFirst()
                .map(existingEmployee -> {
                    updateEmployeeFields(existingEmployee, employeeDetails);
                    return ResponseEntity.ok(existingEmployee);
                })
                .orElse(ResponseEntity.notFound().build());
    }


    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteEmployee(@PathVariable UUID id) {
        boolean isRemoved = employees.removeIf(employee -> employee.getId().equals(id));

        if (isRemoved) {
            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.notFound().build(); 
        }
    }
}
