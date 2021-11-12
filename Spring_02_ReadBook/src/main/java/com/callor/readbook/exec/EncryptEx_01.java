package com.callor.readbook.exec;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;

public class EncryptEx_01 {

    public static void main(String[] args) {
        StandardPBEStringEncryptor pbe = new StandardPBEStringEncryptor();

        String name = "Korea";
        String salt = "!Biz1234";
        // SHA-128, SHA-256, SHA-512, SHA-1024
        String encPolicy = "PBEWithMD5AndDES";
        pbe.setAlgorithm(encPolicy);
        pbe.setPassword(salt);

        String username = "root";
        String password = "1234";

        String encUserName = pbe.encrypt(username);
        String encPassword = pbe.encrypt(password);

        System.out.println(encUserName);
        System.out.println(encPassword);

        String planText = pbe.decrypt(encUserName);
        System.out.println(planText);



    }
}
