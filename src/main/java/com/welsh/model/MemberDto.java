package com.welsh.model;


import java.sql.Date;

import org.springframework.stereotype.Repository;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Repository 
@Data
 
public class MemberDto {

   private int no;
   private String userId;
   private String userName;
   private String userPwd;
   private String userPhone;
   private String userPhoneNumber;
   private String userPhoneMiddleNumber;
   private String userPhoneLastNumber;
   private Date birthDay;
   private int userZipcode;
   private String userAddress;
   private String userAddress01;
   private String userAddress02;
   private String emailCheck;
   private String userNickname;
   private String PICheck1;
   private String PICheck2;
   private String PICheck3;
   private String PICheck4;
   private Date userInsertdate;
   private int deliveryZipcode;
   private String userEmail;
   private String deliveryAddress;
   private int orderNumber;
   private Date orderDate;
   private String reciverName;
   private String reciverPhone;
   private String isKakaoLogin;
}
      