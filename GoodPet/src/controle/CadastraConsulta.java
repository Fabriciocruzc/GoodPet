/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;


import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import modelo.Consulta;


public class CadastraConsulta {
  conexaoBD conex = new conexaoBD();
  Consulta  c = new Consulta();
  
  
  public CadastraConsulta(){
      
  }
  
  public void Salvar(Consulta c){
      conex.conexao();
        try {
            PreparedStatement pst = conex.con.prepareStatement("insert into consultas( animal_consuta,dono_consulta,veterinaio_consulta,data_consulta,horario_consulta ) values(?,?,?,?,?)");
            pst.setString(1, c.getAnimal());
            pst.setString(2, c.getDono());
            pst.setString(3, c.getVeterinario());
            pst.setString(4, c.getData());
            pst.setString(5, c.getHorario());
            pst.execute();
            JOptionPane.showMessageDialog(null, "Dados inseridos com sucesso!!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao inserir dados: "+ex.getMessage());
        }
        
        conex.desconecta();
  }
  
  public void Editar(Consulta c){
      conex.conexao();
        
        try {
            PreparedStatement pst = conex.con.prepareStatement("update consultas set animal_consuta=?,dono_consulta=?,veterinaio_consulta=?,data_consulta=?,horario_consulta=? where id_consulta=? ");
            pst.setString(1, c.getAnimal());
            pst.setString(2, c.getDono());
            pst.setString(3, c.getVeterinario());
            pst.setString(4, c.getData());
            pst.setString(5, c.getHorario());
            pst.setInt(6, c.getCod());
            pst.execute();
            JOptionPane.showMessageDialog(null, "Dados alterados com sucesso!!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao altera consulta: "+ex.getMessage());
        }
        
        conex.desconecta();
  }
  
  public Consulta pesquisarConsulta(Consulta c){
      conex.conexao();
        conex.executarSql("select *from consultas where dono_consulta like'%"+c.getPesquisa()+"%'");
        try {
            conex.rs.first();
            c.setCod(conex.rs.getInt("id_consulta"));
            c.setAnimal(conex.rs.getString("animal_consuta"));
            c.setDono(conex.rs.getString("dono_consulta"));
            c.setVeterinario(conex.rs.getString("veterinaio_consulta"));
            c.setData(conex.rs.getString("data_consulta"));
            c.setHorario(conex.rs.getString("horario_consulta"));
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao pesquisar Consulat: "+ex.getMessage());
        }
        conex.desconecta();
        
        return c;
  }
  
  public void Excluir(Consulta c){
       conex.conexao();
        try {
            PreparedStatement pst = conex.con.prepareStatement("delete from consultas where id_consulta=?");
            pst.setInt(1, c.getCod());
            pst.execute();
            JOptionPane.showMessageDialog(null, "Dados excluidos com sucesso!!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao excluir consulta: "+ex.getMessage());
        }
        
        conex.desconecta();
  }
}
