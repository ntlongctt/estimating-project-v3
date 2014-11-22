package com.estimating.utils;

import java.util.ArrayList;
import java.util.List;

import org.springframework.util.StringUtils;

public class ParseStringToArrayUtils {
	public static List<Double> parseToArray(String value) {
		List<Double> array = new ArrayList<Double>();
		int index = 0;
		do {
			if (StringUtils.countOccurrencesOf(value, ";") > 1) {
				index = value.indexOf(";", 0);
				array.add(Double.parseDouble(value.substring(0, index)));
				value = value.substring(index + 1, value.length());
			} else {
				array.add(Double.parseDouble(value.substring(0, value.lastIndexOf(";"))));
				array.add(Double.parseDouble(value.substring(value.lastIndexOf(";") + 1, value.length())));
				break;
			}
		} while (true);
		return array;
	}
	
	public static void main(String[] args) {
		List<Double> lst = parseToArray("5.0;1.0;5.0;0.1;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;6.0");
		for (int i = 0; i < lst.size(); i++) {
			System.out.println(lst.get(i));
		}
	}
}
