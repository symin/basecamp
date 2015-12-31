package com.board.boardProject;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * <pre>
 * 		서버단에서 이메일 형식 체크를 위한 클래스 
 * </pre>

 * @Author syMin
 * @Date 2015. 12. 30.
 *
 */
public class EmailValidator {

	private Pattern pattern;
	private Matcher matcher;

	private static final String EMAIL_PATTERN = 
		"^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
		+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

	public EmailValidator() {
		pattern = Pattern.compile(EMAIL_PATTERN);
	}

	/**
	 * <pre>
	 * 		이메일 형식이 올바른지 체크 
	 * </pre>
	
	 * @Author : syMin
	 * @Date : 2015. 12. 30.
	 */
	public boolean validate(final String hex) {

		matcher = pattern.matcher(hex);
		return matcher.matches();

	}
}
