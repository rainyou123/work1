package web;

import bean.Goods;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.dbutils.QueryRunner;
import utils.C3P0Utils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

public class EditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            resp.setContentType("text/html;charset=utf-8");
            req.setCharacterEncoding("utf-8");
            QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
            Goods good=new Goods();
            BeanUtils.populate(good,req.getParameterMap());
            String sql = "update goods set uname = ? , utel = ? , uadress = ? , gname = ? , gnum = ? , is_accept = ? where gid = ?";
            qr.update(sql ,good.getUname(),good.getUtel(),good.getUadress()
                    ,good.getGname(),good.getGnum(),good.getIs_accept(),good.getGid());
            resp.sendRedirect(req.getContextPath()+"/goods");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
