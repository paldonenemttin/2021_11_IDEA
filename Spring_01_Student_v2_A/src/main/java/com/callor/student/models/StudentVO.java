package com.callor.student.models;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name = "tbl_student")
public class StudentVO {

    @Id
    @Column(name="st_num",columnDefinition = "VARCHAR(8)")
    private String st_num;
    @Column(name="st_num",columnDefinition = "VARCHAR(8)")
    private String st_name;
    @Column(name="st_num",columnDefinition = "VARCHAR(20)")
    private String st_dept;
    @Column(name="st_num",columnDefinition = "VARCHAR(8)")
    private String st_grade;
    @Column(name="st_num",columnDefinition = "VARCHAR(1)")
    private String st_tel;
    @Column(name="st_num",columnDefinition = "VARCHAR(20)")
    private String st_addr;

}
