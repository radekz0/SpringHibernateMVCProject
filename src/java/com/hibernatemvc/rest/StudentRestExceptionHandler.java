package com.hibernatemvc.rest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class StudentRestExceptionHandler {

    @ExceptionHandler
    public ResponseEntity<StudentErrorResponse> handleException(StudentNotFoundException e){
        StudentErrorResponse errorResponse = new StudentErrorResponse(HttpStatus.NOT_FOUND.value(), e.getMessage(), System.currentTimeMillis());

        //errorResponse is the body, and HttpStatus is the status code
        return new ResponseEntity<>(errorResponse, HttpStatus.NOT_FOUND);
    }

    //Catching remaining exceptions
    @ExceptionHandler
    public ResponseEntity<StudentErrorResponse> handleException(Exception e){
        StudentErrorResponse errorResponse = new StudentErrorResponse(HttpStatus.BAD_REQUEST.value(), e.getMessage(), System.currentTimeMillis());

        //errorResponse is the body, and HttpStatus is the status code
        return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
    }


}
