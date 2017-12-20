package cn.qwertier.library;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DataTableBookAction extends ActionSupport {
    
    static int draw;
    int recordsTotal, recordsFiltered;
    public int getRecordsTotal() {
        return recordsTotal;
    }
    public int getDraw() {
        return draw;
    }
    public int getRecordsFiltered() {
        return recordsFiltered;
    }
    ArrayList data;
    public ArrayList getData() {
        return data;
    }
    static String[] col = {"isbn", "title", "name", "age", "country", "publisher", "publishDate", "price"};
    public String execute() throws ClassNotFoundException, IOException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/BookDB?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";//忽略
        
        Connection connection = DriverManager.getConnection(url, "root", "AdHoc987");
        //执行SQL
        Statement sta = connection.createStatement();
        
        String preSql = "SELECT b.ISBN, b.Title, a.Name, a.Age, a.Country, b.Publisher, b.PublishDate, b.Price " 
                + "FROM Book b, Author a "
                + "WHERE a.AuthorID=b.AuthorID "
                + "and b.ISBN LIKE ? "
                + "and b.Title LIKE ? "
                + "and a.Name LIKE ? "
                + "and b.Publisher LIKE ? "
                + "and b.PublishDate >= ? "
                + "and b.PublishDate <= ? "
                + "and b.Price <= ? "
                + "order by b.ISBN "
                + "limit ?,?;";
        System.out.println(preSql);
        PreparedStatement preSta = connection.prepareStatement(preSql);
        ActionContext context=ActionContext.getContext();
        HttpServletRequest request = (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);
        for (int i = 0; i < 6; i++) {
            if (i < 4)
                preSta.setString(i+1, "%"+request.getParameter("columns[" + Integer.toString(i) + "][search][value]")+"%");
            else if (i == 4) {
                String dateRange = request.getParameter("columns[4][search][value]");
                if (dateRange.equals("") || dateRange == null)
                    dateRange = "1900/01/01-2017/09/01";
                System.out.println(dateRange);
                System.out.println(dateRange.split("-")[0].trim().replace('/', '-'));
                preSta.setString(i+1, dateRange.split("-")[0].trim().replace('/', '-'));
                preSta.setString(i+2, dateRange.split("-")[1].trim().replace('/', '-'));
                System.out.println(dateRange.split("-")[1].replace('/', '-'));
            } else {
                String price = request.getParameter("columns[" + Integer.toString(i) + "][search][value]");
                if (price.equals(""))
                    price = "10000000.0"; 
                preSta.setFloat(i+2, Float.parseFloat(price));
            }
        }
        preSta.setInt(8, Integer.parseInt(request.getParameter("start")));
        preSta.setInt(9, Integer.parseInt(request.getParameter("length")));
        System.out.println(preSta.toString());
        ResultSet resultSet = preSta.executeQuery();
        data = new ArrayList();
        recordsFiltered = 0;
        while (resultSet.next()){
            HashMap row = new HashMap();
            HashMap author = new HashMap();
            for (int i = 1; i <= 8; i++) {
                if (i >=3 && i <= 5)
                    author.put(col[i-1], resultSet.getString(i));
                else
                    row.put(col[i-1], resultSet.getString(i));
                System.out.println(resultSet.getString(i));
            }
            row.put("author", author);
            data.add(row);
            ++recordsFiltered;
        }
        
        preSta = connection.prepareStatement("select count(*) from Book");
        resultSet = preSta.executeQuery();
        while (resultSet.next()) {
            recordsTotal = Integer.parseInt(resultSet.getString(1));
        }
        
        //关闭语句
        sta.close();
        //关闭结果集
        resultSet.close();
        //关闭数据库连接
        connection.close();
        ++draw;
        return SUCCESS;
    }
}
