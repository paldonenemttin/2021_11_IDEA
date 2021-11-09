package com.callor.student.service;

import com.callor.student.models.StudentVO;

import java.util.List;
import java.util.Optional;

public interface StudentService {

    public List<StudentVO> selectAll();
    public Optional<StudentVO> findById(String st_num);

    public void insert(StudentVO stVO);
    public StudentVO update(StudentVO stVO);
    public String delete(String st_num);
}
