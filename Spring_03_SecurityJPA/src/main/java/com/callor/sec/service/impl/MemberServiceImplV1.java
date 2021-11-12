package com.callor.sec.service.impl;

import com.callor.sec.models.UserDetailsVO;
import com.callor.sec.repository.MemberDao;
import com.callor.sec.service.MemberService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("memServiceV1")
public class MemberServiceImplV1 implements MemberService {

    private final MemberDao memDao;

    public MemberServiceImplV1(MemberDao memDao) {
        this.memDao = memDao;
    }

    @Override
    public List<UserDetailsVO> selectAll() {
        return null;
    }

    @Override
    public UserDetailsVO findById(String s) {
        return null;
    }

    @Override
    public void insert(UserDetailsVO userDetailsVO) {

    }

    @Override
    public void update(UserDetailsVO userDetailsVO) {

    }

    @Override
    public void delete(String s) {

    }

    @Override
    public List<UserDetailsVO> findByEmail(String email) {
        return null;
    }

    @Override
    public List<UserDetailsVO> findByTel(String tel) {
        return null;
    }

    @Override
    public int userCount() {
        return 0;
    }
}
