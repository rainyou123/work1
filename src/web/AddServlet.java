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
import java.util.UUID;

public class AddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            resp.setContentType("text/html;charset=utf-8");
            req.setCharacterEncoding("utf-8");
            Goods good=new Goods();
            BeanUtils.populate(good,req.getParameterMap());
            good.setGid(UUID.randomUUID().toString());
            QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
            String sql = "insert into goods values (?,?,?,?,?,?,?)";
            qr.update(sql , good.getGid() , good.getUname() , good.getUtel(),good.getUadress()
                    ,good.getGname(),good.getGnum(),good.getIs_accept());
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
