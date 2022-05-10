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
public class Funcionarios {
     int funcionarioID;
     String titulo;
     String email;
    
     public static int getCount() throws Exception{
        ArrayList<Funcionarios> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        //O caminho do arquivo deve ser diferente se executado do seu PC
        //https://www.sqlitetutorial.net/sqlite-sample-database/
        String url = "jdbc:sqlite:/home/andre/chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select count(*) as count from employees");
        int count = 0;
        while(rs.next()){
            count = rs.getInt("count");
        }
        rs.close();
        stmt.close();
        con.close();
        return count;
    }
     
     public static ArrayList<Funcionarios> getList() throws Exception{
        ArrayList<Funcionarios> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        //O caminho do arquivo deve ser diferente se executado do seu PC
        //https://www.sqlitetutorial.net/sqlite-sample-database/
        String url = "jdbc:sqlite:/home/andre/chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from employees order by EmployeeId");
        while(rs.next()){
            int funcionarioID = rs.getInt("EmployeeId");
            String titulo = rs.getString("Title");
            String email = rs.getNString("Email");
            Funcionarios a = new Funcionarios(funcionarioID, titulo, email);
            list.add(a);
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }
     
     
    public Funcionarios(int funcionarioID, String titulo, String email) {
        this.funcionarioID = funcionarioID;
        this.titulo = titulo;
        this.email = email;
    }

    public int getFuncionarioID() {
        return funcionarioID;
    }

    public void setFuncionarioID(int funcionarioID) {
        this.funcionarioID = funcionarioID;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
     
     
     
}
