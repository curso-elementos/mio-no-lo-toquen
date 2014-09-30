/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jc.controller;

import java.util.ArrayList;

/**
 *
 * @author campitos
 */
public class Zodiaco implements Futuro{
private ArrayList<Signo> signos;

    public Zodiaco() {
        signos=new ArrayList<Signo>();
        Signo virgo=new Signo("virgo","No salgas, estás expuesto a que te muerda la vibora cabezona, que por cierto es muy venenosa");
        Signo libra=new Signo("libra","Eres sumamente inteligente, trata de no hacerle caso a los esúdios y estúpidas que te rodean , te envidian");
        Signo acuario=new Signo("acuario","Ya no le atores tanto a las garnachas, te esta poniendo bien chuchi, come mejor lechugas todo el dia");
        //agregamos los signos
        signos.add(virgo);
        signos.add(libra);
        signos.add(acuario);
        
    }
    public String leerFuturo(String parametro) {
      String tuFuturo="Tu signo no está disponible :(";
      for(Signo s:signos){
      if(parametro.equalsIgnoreCase(s.getNombre())){
          tuFuturo=s.getPrediccion();
                }
          
          }
        return tuFuturo;
    }

    
    
  
    
}
