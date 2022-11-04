package com.petmily.customer.command;

import javax.servlet.http.HttpServletResponse;

public interface CustomerCommand {
	public void execute(HttpServletResponse request, HttpServletResponse response);
}
