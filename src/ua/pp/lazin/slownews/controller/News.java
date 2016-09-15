package ua.pp.lazin.slownews.controller;

import ua.pp.lazin.slownews.integration.NewsCache;
import ua.pp.lazin.slownews.entity.*;
import Test.TestDbConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/news")
public class News extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<NewsItem> newsList = NewsCache.getInstance().getNewsList();

        request.getSession().setAttribute("newsList", newsList);



        // TODO delete test db from here
        try {
            TestDbConnection.testDBConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }



        request.getRequestDispatcher("/WEB-INF/pages/news.jsp").forward(request, response);

    }
}