package com.bayrktlihn.jsp.tagdemo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Student {
	private String firstName;
	private String lastName;
	private boolean goldCustomer;
}
