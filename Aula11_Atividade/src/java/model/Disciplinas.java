/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author root
 */
public class Disciplinas {
    String sigla;
    String nome;
    String ementa;
    String diaSemana;
    String Horario;
    
    public Disciplinas(String sigla, String nome, String ementa, String diaSemana, String Horario) {
        this.sigla = sigla;
        this.nome = nome;
        this.ementa = ementa;
        this.diaSemana = diaSemana;
        this.Horario = Horario;
    }

    public String getSigla() {
        return sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public String getDiaSemana() {
        return diaSemana;
    }

    public void setDiaSemana(String diaSemana) {
        this.diaSemana = diaSemana;
    }

    public String getHorario() {
        return Horario;
    }

    public void setHorario(String Horario) {
        this.Horario = Horario;
    }

    
    
    
}