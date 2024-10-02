package com.example.management_employee.controller;

import lombok.*;
import lombok.experimental.FieldDefaults;

import java.util.Date;
import java.util.UUID;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE) // mac dinh cac field la private
public class Employee {
     UUID id;
     String name;
     String gender;
     double salary;
     Date birthday;
     Integer departmentId;
}
