package com.example.calculator.Controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class CalculatorController {
    @GetMapping("/calculator")
    public ResponseEntity<?> calculator(@RequestParam(value = "firstNumber", defaultValue = "") String firstNumber,
                                        @RequestParam(value = "secondNumber", defaultValue = "") String secondNumber,
                                        @RequestParam(value = "operator", defaultValue = "") String operator) {
        if (firstNumber.isEmpty()) {
            return new ResponseEntity<>("First number cannot be null", HttpStatus.BAD_REQUEST);
        } else if (secondNumber.isEmpty()) {
            return new ResponseEntity<>("Second number cannot be null", HttpStatus.BAD_REQUEST);
        }

        double a = Double.parseDouble(firstNumber);
        double b = Double.parseDouble(secondNumber);
        double result = 0;

        switch (operator) {
            case "+":
                result = a + b;
                break;
            case "-":
                result = a - b;
                break;
            case "*":
                result = a * b;
                break;
            case "/":
                if (b == 0) {
                    return new ResponseEntity<>("Division by zero", HttpStatus.BAD_REQUEST);
                }
                result = a / b;
                break;
            default:
                return new ResponseEntity<>("Invalid operator", HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<>("result: " + result, HttpStatus.OK);
    }

}
