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

public class GetAuthorListAction extends ActionSupport {
    ArrayList authors;
    public ArrayList getAuthors() {
        return authors;
    }
    static String[] col = {"authorID", "Name", "Age", "Country"};
    public String execute() throws ClassNotFoundException, IOException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/BookDB?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";//忽略
        
        Connection connection = DriverManager.getConnection(url, "root", "AdHoc987");
        //执行SQL
        Statement sta = connection.createStatement();
        
        String preSql = "SELECT * from Author";
        System.out.println(preSql);
        PreparedStatement preSta = connection.prepareStatement(preSql);
        System.out.println(preSta.toString());
        ResultSet resultSet = preSta.executeQuery();
        authors = new ArrayList();
        while (resultSet.next()){
            HashMap row = new HashMap();
            for (int i = 1; i <= 4; i++) {
                row.put(col[i-1], resultSet.getString(i));
                System.out.println(resultSet.getString(i));
            }
            authors.add(row);
        }
        
        //关闭语句
        sta.close();
        //关闭结果集
        resultSet.close();
        //关闭数据库连接
        connection.close();
        return SUCCESS;
    }
}
