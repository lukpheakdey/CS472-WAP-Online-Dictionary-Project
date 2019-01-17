/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mum.cs472;

import com.google.gson.Gson;
import java.sql.Connection;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 

/**
 *
 * @author lukpheakdey
 */

public class DictServlet extends HttpServlet {

    DbConnection db;

    @Override
    public void init() throws ServletException {
        db = new DbConnection("jdbc:mysql://localhost:3307/entries", "root", "");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String term = request.getParameter("term");
        System.out.println(term);

        if (null != term && !"".equals(term)) {
            try {
                Gson gson = new Gson();
                String jsonDataOnilneDictionary = gson.toJson(listAll(term));
                System.out.println(jsonDataOnilneDictionary);
                
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8"); 
                response.getWriter().write(jsonDataOnilneDictionary); 
            } catch (SQLException ex) {
                Logger.getLogger(DictServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public List<Entries> listAll(String term) throws SQLException {
        List<Entries> list = new ArrayList<>();
        String sql = "SELECT * FROM entries where word = '" + term + "'";

        Connection conn = db.getConnetion();
        Statement statement = conn.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        while (resultSet.next()) {
            String word = resultSet.getString("word");
            String wordtype = resultSet.getString("wordtype");
            String definition = resultSet.getString("definition");
            Entries entries = new Entries(word, wordtype, definition);
            list.add(entries);
        }
        
        resultSet.close();
        statement.close();

        if (null != conn) {
            conn.close();
        }
        return list;
    }
}
