package com.Teacher;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

@WebServlet("/DownloadServlet")
public class DownloadServlet extends HttpServlet {
 

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int fileId = Integer.parseInt(request.getParameter("fileId"));
        
        try  {
        	Connection conn = DatabaseConnection.connection;
            String sql = "SELECT * FROM documents WHERE Did = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, fileId);
            
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String fileName = resultSet.getString("file_name");
                response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
                
                InputStream inputStream = resultSet.getBinaryStream("document");
                int bytesRead;
                byte[] buffer = new byte[4096];
                
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    response.getOutputStream().write(buffer, 0, bytesRead);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

