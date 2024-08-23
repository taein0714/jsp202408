package utils;

import jakarta.servlet.jsp.JspWriter;

public class JSFunction {

	public static void alertBack(String msg, String url, JspWriter out) {
		try {
			String sc = " "
					      + "<script>"
					      + "   alert('" + msg + "');"
					      + "   location.href='" + url + "';"
					      + "<script>";
			System.out.println();
			out.println(sc);
			
		}
		catch (Exception e) {}

	}

}
