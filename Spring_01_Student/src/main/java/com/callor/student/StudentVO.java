package com.callor.student;

import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class StudentVO {
    private String st_num;
    private String st_name;
    private String st_dept;
    private String st_grade;
    private String st_address;
    private String st_tel;
}
