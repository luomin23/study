package com.asiainfo.chapter1.hanjunwen.webDemo.blog.controller.blog;


import com.asiainfo.chapter1.hanjunwen.webDemo.blog.dao.OperationBlogDAO;
import com.asiainfo.chapter1.hanjunwen.webDemo.blog.dao.dao.impl.OperationBlogDAOImpl;
import com.asiainfo.chapter1.hanjunwen.webDemo.blog.entity.Blog;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class UpdateBlogServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        int id=Integer.parseInt(request.getParameter("id"));
        String title=request.getParameter("title");
        String article=request.getParameter("article");
        String author=request.getParameter("author");
//        System.out.println(author);
        Blog blog = new Blog();
        blog.setId(id);
        blog.setTitle(title);
        blog.setAuthor(author);
        blog.setArticle(article);
        OperationBlogDAO obd = new OperationBlogDAOImpl();
        if(obd.updateBlogByUser(blog)){
            String result = "修改成功！";
            request.setAttribute("result",result);
            request.getRequestDispatcher("/getAllBlogsByUsernameWithPage.do?page=1").forward(request,response);
        }else {
            String result = "修改失败！";
            request.setAttribute("result",result);
            request.getRequestDispatcher("/getAllBlogsByUsernameWithPage.do?page=1").forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
