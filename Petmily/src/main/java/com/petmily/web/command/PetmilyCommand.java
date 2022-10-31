package com.petmily.web.command;

import javax.servlet.http.HttpServletResponse;

public interface PetmilyCommand {
	public void execute(HttpServletResponse request, HttpServletResponse response);
}
