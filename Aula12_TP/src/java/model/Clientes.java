/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author root
 */
public class Clientes {
   private int id;
   private String nome;
   private String cidade;

    public static int getCount() throws Exception{
        ArrayList<Clientes> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        //O caminho do arquivo deve ser diferente se executado do seu PC
        //https://www.sqlitetutorial.net/sqlite-sample-database/
        String url = "jdbc:sqlite:/home/andre/chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select count(*) as count from customers");
        int count = 0;
        while(rs.next()){
            count = rs.getInt("count");
        }
        rs.close();
        stmt.close();
        con.close();
        return count;
    }
     
     public static ArrayList<Clientes> getList() throws Exception{
        ArrayList<Clientes> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        //O caminho do arquivo deve ser diferente se executado do seu PC
        //https://www.sqlitetutorial.net/sqlite-sample-database/
        String url = "jdbc:sqlite:/home/andre/chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from customers order by CustomerId");
        while(rs.next()){
            int id = rs.getInt("CustomerId");
            String nome = rs.getString("FirstName");
            String cidade = rs.getString("City");
            Clientes a = new Clientes(id, nome, cidade);
            list.add(a);
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }
    
    
    
    public Clientes(int id, String nome, String cidade) {
        this.id = id;
        this.nome = nome;
        this.cidade = cidade;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }
    
    
    
    
}
