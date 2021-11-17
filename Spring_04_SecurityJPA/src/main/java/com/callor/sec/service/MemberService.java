package com.callor.sec.service;

import com.callor.sec.models.UserDetailsVO;

import java.util.List;

public interface MemberService extends GenericService<UserDetailsVO, String> {
    
    public List<UserDetailsVO> findByEmail(String email);
    public List<UserDetailsVO> findByTel(String tel);
    
    // DB에 저장된 사용자가 얼마나 있는가
    public int userCount();
}
