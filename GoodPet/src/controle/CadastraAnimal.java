/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import modelo.Animal;


public class CadastraAnimal {
    conexaoBD conex = new conexaoBD();
    Animal a = new Animal();
    
    public CadastraAnimal(){
        
    }
    
    public void Salvar(Animal a){
        conex.conexao();
        try {
            PreparedStatement pst = conex.con.prepareStatement("insert into animais( nome_animal,idade_animal,sexo_animal,raca_animal,especie_animal,dono_animal) values(?,?,?,?,?,?)");
            pst.setString(1, a.getNome());
            pst.setInt(2, a.getIdade());
            pst.setString(3, a.getSexo());
            pst.setString(4, a.getRaca());
            pst.setString(5, a.getEspecie());
            pst.setString(6, a.getDono());
            pst.execute();
            JOptionPane.showMessageDialog(null, "Dados inseridos com sucesso!!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao inserir dados: "+ex.getMessage());
        }
        
        conex.desconecta();
    }
    
    public void Edita(Animal a){
        conex.conexao();
        
        try {
            PreparedStatement pst = conex.con.prepareStatement("update animais set nome_animal=?,idade_animal=?,sexo_animal=?,raca_animal=?,especie_animal=?,dono_animal=? where id_animal=? ");
            pst.setString(1, a.getNome());
            pst.setInt(2, a.getIdade());
            pst.setString(3, a.getSexo());
            pst.setString(4, a.getRaca());
            pst.setString(5, a.getEspecie());
            pst.setString(6, a.getDono());
            pst.setInt(7, a.getCod());
            pst.execute();
            JOptionPane.showMessageDialog(null, "Dados alterados com sucesso!!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao altera animal: "+ex.getMessage());
        }
        
        conex.desconecta();
    }
    
    public Animal pesquisaAnimal(Animal a){
        conex.conexao();
        conex.executarSql("select *from animais where nome_animal like'%"+a.getPesquisa()+"%'");
        try {
            conex.rs.first();
            a.setCod(conex.rs.getInt("id_animal"));
            a.setNome(conex.rs.getString("nome_animal"));
            a.setIdade(conex.rs.getInt("idade_animal"));
            a.setSexo(conex.rs.getString("sexo_animal"));
            a.setRaca(conex.rs.getString("raca_animal"));
            a.setEspecie(conex.rs.getString("especie_animal"));
            a.setDono(conex.rs.getString("dono_animal"));
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao pesquisar Animal: "+ex.getMessage());
        }
        conex.desconecta();
        
        return a;
    }
    
    public void Excluir(Animal a){
        conex.conexao();
        try {
            PreparedStatement pst = conex.con.prepareStatement("delete from animais where id_animal=?");
            pst.setInt(1, a.getCod());
            pst.execute();
            JOptionPane.showMessageDialog(null, "Dados excluidos com sucesso!!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao excluir animal: "+ex.getMessage());
        }
        
        conex.desconecta();
    }
}
