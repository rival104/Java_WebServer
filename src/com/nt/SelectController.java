package com.nt;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.dao.EmpDao;
import com.nt.entity.Employee;

public class SelectController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			Employee emp = EmpDao.select(id);
			if(emp != null) {
				req.setAttribute("emp", emp);
				RequestDispatcher rd = req.getRequestDispatcher("display.jsp");
				rd.forward(req, resp);
			}else {
				RequestDispatcher rd = req.getRequestDispatcher("display.jsp");
				rd.forward(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
