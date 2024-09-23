package com.example.dictionary.Controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping
public class DictionaryController {

    Map<String, String> dictionaryMap = Map.ofEntries(
            Map.entry("lemon", "chanh"),
            Map.entry("apple", "táo"),
            Map.entry("egg", "trứng"),
            Map.entry("pineapple", "dứa")
    );

    @GetMapping("/dictionary")
    public ResponseEntity<?> dictionary(@RequestParam(defaultValue = "") String word) {
        String translation = dictionaryMap.get(word.toLowerCase());
        if (translation != null) {
            return new ResponseEntity<>(translation,HttpStatus.OK);
        }
        return new ResponseEntity<>("Không có trong từ điển!",HttpStatus.NOT_FOUND);
    }
}
