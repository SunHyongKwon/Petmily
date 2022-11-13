package com.petmily.customer.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CustomerCommand {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException;
	public int executeInt(HttpServletRequest request, HttpServletResponse response) throws IOException;
	
	
}
