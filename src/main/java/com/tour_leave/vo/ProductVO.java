package com.tour_leave.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {

	private String tlp_name;
	private String tlp_sub_name;
	private String tlp_chkin_date;
	private String tlp_chkout_date;
	private Integer tlp_guest_count;
	private Integer tlp_price;
	private Integer tlp_therms;
	private Integer tlp_buy_count;
	private Integer tlp_country_choice;
	
	private String tlpi_uri;
	private String tlc_name;
	
	
	
}
