package com.star.user.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.star.Action;
import com.star.Result;
import com.star.user.dao.UserDAO;
import com.star.user.domain.Criteria;
import com.star.user.domain.Search;

public class SelectAllController implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		UserDAO userDAO = new UserDAO(); 
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		String sort = req.getParameter("sort");
		String type = req.getParameter("type");
		String keyword = req.getParameter("keyword");
		
		sort = sort == null ? "recent" : sort; 
		
		Search search = new Search(type, keyword);
		Criteria criteria = new Criteria(page, userDAO.getTotal(search), sort);
		HashMap<String, Object> pagable = new HashMap<String, Object>();
		pagable.put("types", search.getTypes());
		pagable.put("keyword", search.getKeyword());
		pagable.put("offset", criteria.getOffset());
		pagable.put("rowCount", criteria.getRowCount());
		pagable.put("sort", sort);
		
		
		
		userDAO.select(pagable).stream().map(user -> new JSONObject(user)).forEach(jsonArray::put);
		req.setAttribute("users", jsonArray.toString());
		req.setAttribute("total", userDAO.getTotal(search));
		req.setAttribute("page", page);
		req.setAttribute("startPage", criteria.getStartPage());
		req.setAttribute("endPage", criteria.getEndPage());
		req.setAttribute("prev", criteria.isPrev());
		req.setAttribute("next", criteria.isNext());
		req.setAttribute("sort", sort);
		req.setAttribute("type", type);
		req.setAttribute("keyword", keyword);
		result.setPath("templates/adminpage/changeinfo.jsp"); 
		return result;
		
		

		
		
		
	}
}
