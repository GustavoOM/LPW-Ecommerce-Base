/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.util.ArrayList;
import modelos.Produto;

/**
 *
 * @author gumar
 */
public class Mock {
    
    private static ArrayList <Produto> lista;
    
    
    public static void makeMock(){
        if(lista == null){
            lista = Produto.getLista();

            Produto caneta = new Produto();
            caneta.setDescricao("Caneta Faber");
            caneta.setPreco(2.0f);
            caneta.setOferta(true);
            caneta.setQtd(3);
            caneta.setImg("https://img.angeloni.com.br/files/produtos/2928565/2928565_1_large.jpg");

            Produto regua = new Produto();
            regua.setDescricao("Regua");
            regua.setPreco(5.0f);
            regua.setOferta(false);
            regua.setQtd(6);
            regua.setImg("https://img.kalunga.com.br/FotosdeProdutos/662417z_1.jpg");

            Produto transferidor = new Produto();
            regua.setDescricao("Transferidor");
            regua.setPreco(3.0f);
            regua.setOferta(false);
            regua.setQtd(15);
            regua.setImg("https://cdnv2.moovin.com.br/marbig/imagens/produtos/det/transferidor-escolar-180-graus-academie-img-55911.jpg");

        }
    }
            
}
