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

public class AddAuthorAction extends ActionSupport {
    public boolean getOk() {
        return ok;
    }
    public void setName(String name) {
        this.name = name;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public void setAge(int age) {
        this.age = age;
    }
    boolean ok;
    String name, country;
    int age;
    
    public String execute() throws ClassNotFoundException, IOException {
        ok = false;
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/BookDB?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";//忽略
        
        int result;
        try {
            Connection connection = DriverManager.getConnection(url, "root", "AdHoc987");
            //执行SQL
            Statement sta = connection.createStatement();
            
            String preSql = "insert into Author (Name, Age, Country) values (?, ?, ?);";
            
            System.out.println(preSql);
            PreparedStatement preSta = connection.prepareStatement(preSql);
            preSta.setString(1, name);
            preSta.setInt(2, age);
            preSta.setString(3, country);
            System.out.println(preSta.toString());
            result = preSta.executeUpdate();
            //关闭语句
            sta.close();
            //关闭数据库连接
            connection.close();
        } catch (SQLException sqle) {
            return SUCCESS;
        }
        
        System.out.println("OK");
        if (result == 1)
            ok = true;
        return SUCCESS;
    }
}
