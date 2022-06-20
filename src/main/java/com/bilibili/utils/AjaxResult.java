package com.bilibili.utils;

public class AjaxResult {
	
	private String message = "操作成功！";
	
	private Boolean success = true;

	
	
	public AjaxResult() {
		super();
	}

	public AjaxResult(String message, Boolean success) {
		super();
		this.message = message;
		this.success = success;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Boolean getSuccess() {
		return success;
	}

	public void setSuccess(Boolean success) {
		this.success = success;
	}
	
	
}
