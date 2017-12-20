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

public class GetBookAction extends ActionSupport {
    String ISBN;
    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }
    HashMap data;
    public HashMap getData() {
        return data;
    }
    
    static String[] col = {"ISBN", "title", "authorID", "publisher", "publishDate", "price"};
    public String execute() throws ClassNotFoundException, IOException, SQLException {
        
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/BookDB?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";//忽略
        
        Connection connection = DriverManager.getConnection(url, "root", "AdHoc987");
        //执行SQL
        Statement sta = connection.createStatement();
        
        String preSql = "SELECT * from Book WHERE ISBN = ?";
        System.out.println(preSql);
        PreparedStatement preSta = connection.prepareStatement(preSql);
        System.out.println(preSta.toString());
        preSta.setString(1, ISBN);
        ResultSet resultSet = preSta.executeQuery();
        while (resultSet.next()){
            data = new HashMap();
            for (int i = 1; i <= 6; i++) {
                data.put(col[i-1], resultSet.getString(i));
            }
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
