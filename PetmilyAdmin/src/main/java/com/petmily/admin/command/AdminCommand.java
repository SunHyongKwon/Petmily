package com.petmily.admin.command;

import javax.servlet.http.HttpServletResponse;

public interface AdminCommand {
	public void execute(HttpServletResponse request, HttpServletResponse response);
}
