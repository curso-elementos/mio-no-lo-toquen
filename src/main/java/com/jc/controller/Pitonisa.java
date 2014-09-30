/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jc.controller;

/**
 *
 * @author campitos
 */
public class Pitonisa{
  Futuro futuro;
public Pitonisa(Futuro futuro){
    this.futuro=futuro;
}  
  
  public String obtenerFuturo(String parametro){
     
      return futuro.leerFuturo(parametro);
  }
    
    
}
