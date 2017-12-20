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

public class ModifyBookAction extends ActionSupport {
    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public void setAuthorID(int authorID) {
        this.authorID = authorID;
    }
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }
    public void setPublishDate(String publishDate) {
        this.publishDate = publishDate;
    }
    public void setPrice(float price) {
        this.price = price;
    }
    public boolean getOk() {
        return ok;
    }
    public void setIntention(String intention) {
        this.intention = intention;
    }
    boolean ok;
    String ISBN, title, publisher, publishDate;
    int authorID;
    float price;
    String intention;
    public String execute() throws ClassNotFoundException, IOException {
        
        ok = false;
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/BookDB?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";//忽略
        
        
        int result;
        try {
            Connection connection = DriverManager.getConnection(url, "root", "AdHoc987");
            //执行SQL
            Statement sta = connection.createStatement();
            
            String preSql = "replace into Book set ISBN=?, Title=?,AuthorID=?,Publisher=?,PublishDate=?, Price=?;";
            if (intention.equals("add"))
                preSql = "insert into Book (ISBN, Title, AuthorID, Publisher, PublishDate, Price) values (?, ?, ?, ?, ?, ?);";
            else if (intention.equals("delete"))
                preSql = "DELETE FROM Book WHERE ISBN = ?";
            System.out.println(preSql);
            PreparedStatement preSta = connection.prepareStatement(preSql);
            preSta.setString(1, ISBN);
            if (!intention.equals("delete")) {
                preSta.setString(2, title);
                preSta.setInt(3, authorID);
                preSta.setString(4, publisher);
                preSta.setString(5, publishDate);
                preSta.setFloat(6, price);
            }
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
        ok = true;
        return SUCCESS;
    }
}
