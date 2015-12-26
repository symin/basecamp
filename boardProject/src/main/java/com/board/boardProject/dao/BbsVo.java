package com.board.boardProject.dao;

/**
 * <pre>
 * 		데이터 저장을 위한 vo 객체 
 * </pre>

 * @Author syMin
 * @Date 2015. 12. 23.
 *
 */
public class BbsVo {

	private Integer idx;
	private String email;
	private String pwd;
	private String content;
	private String datetime;
	private String updatetime;
	public Integer getIdx() {
		return idx;
	}
	public void setIdx(Integer idx) {
		this.idx = idx;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	public String getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}
	
	

	
}
