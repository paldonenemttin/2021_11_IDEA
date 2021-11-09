package com.callor.student.service.impl;

import com.callor.student.models.StudentVO;
import com.callor.student.repository.StudentDao;
import com.callor.student.service.StudentService;

import java.util.List;
import java.util.Optional;

public class StudentServiceImpl implements StudentService {

    private final StudentDao stDao;
    public StudentServiceImpl(StudentDao stDao) {
        this.stDao = stDao;
    }


    @Override
    public List<StudentVO> selectAll() {
        return stDao.findAll();
    }

    @Override
    public Optional<StudentVO> findById(String st_num) {
        return stDao.findById(st_num);
    }

    @Override
    public void insert(StudentVO stVO) {
        stDao.save(stVO);
    }

    @Override
    public StudentVO update(StudentVO stVO) {
       return stDao.save(stVO);
    }

    @Override
    public String delete(String st_num) {
        return stDao.delete(st_num);
    }
}
