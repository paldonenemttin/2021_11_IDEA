package com.callor.student.models;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

public class OrableVO {

    /**
     * ORABLE DBMS 에서 일련번호 칼럼 만들기
     * SEQ_ORABLE이라는 이름으로 Sequence 를 만들고
     * 증가값응ㄹ 1씩 증가시켜라
     * 이 프로젝트에서 O_SEQ 란 별명으로 사용하겠다
     */
    @SequenceGenerator(
            name="O_SEQ",
            sequenceName = "SEQ_ORABLE",
            allocationSize = 1)
    /**
     * O_SEQ 라는 별명으로 생성된 Sequence 를 사용해
     * insert 할때 o_seq 칼럼의 데이터를 생성하라
     */
    @GeneratedValue(strategy = GenerationType.SEQUENCE, 
            generator = "O_SEQ")
    @Id
    private Long g_seq;
    
}
