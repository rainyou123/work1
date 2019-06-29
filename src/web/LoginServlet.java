package web;

import bean.Admin;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import utils.C3P0Utils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String aname=req.getParameter("aname");
            String apassword=req.getParameter("apassword");
            QueryRunner qr = new QueryRunner(C3P0Utils.getDataSource());
            String sql = "select * from Admin where aname = ? and apassword = ?";
            Admin admin = qr.query(sql, new BeanHandler<>(Admin.class), aname, apassword);
            if(null!=admin){
                resp.sendRedirect(req.getContextPath()+ "/goods");
            }else{
                req.setCharacterEncoding("utf-8");
                req.setAttribute("info" , "登录失败，用户名或密码错误!");
                req.getRequestDispatcher(req.getContextPath() + "/login.jsp").forward(req , resp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        resp.setContentType("text/html;charset=utf-8");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
