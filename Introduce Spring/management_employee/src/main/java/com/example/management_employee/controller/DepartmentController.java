package com.example.management_employee.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/department")
public class DepartmentController {
    private List<Department> departments = new ArrayList<>(
            Arrays.asList(
                    new Department(1, "Kế toán"),
                    new Department(2, "IT"),
                    new Department(3, "Digital Marketing"),
                    new Department(4, "Quản lý"),
                    new Department(5, "Nhân viên")
            )
    );

    @GetMapping()
    public ResponseEntity<?> getAll() {
        return new ResponseEntity<>(departments, HttpStatus.OK);
    }

    @PostMapping()
    public ResponseEntity<?> createDepartment(@RequestBody Department department) {
        department.setId((int) (Math.random() * 100000));
        departments.add(department);
        return new ResponseEntity<>(department, HttpStatus.CREATED);
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getDepartmentById(@PathVariable Integer id) {
        return departments.stream()
                .filter(department -> department.getId().equals(id))
                .findFirst()
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PutMapping("/{id}")
    public ResponseEntity<?> updateDepartmentById(@PathVariable Integer id, @RequestBody Department department) {
        return departments.stream()
                .filter(d -> d.getId().equals(id))
                .findFirst()
                .map(d -> {
                    d.setName(department.getName());
                    return ResponseEntity.ok();
                })
                .orElseThrow().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> removeDepartment(@PathVariable Integer id) {
        boolean isRemoved = departments.removeIf(d -> d.getId().equals(id));

        if (isRemoved) {
            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}
