
package controle;

import controle.conexaoBD;
import modelo.Veterinario;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


public class CadastroVeterinario {
    
    conexaoBD conex = new conexaoBD();
    Veterinario vet = new Veterinario();
    
    public CadastroVeterinario(){
        
    }
    
    public void Salvar(Veterinario vet){
        conex.conexao();
        try {
            PreparedStatement pst = conex.con.prepareStatement("insert into veterinarios( nome_veterinario,rg_veterinario,cpf_veterinario,telefono_veterinario,idade_veterinario,email_veterinario) values(?,?,?,?,?,?)");
            pst.setString(1, vet.getNome());
            pst.setString(2, vet.getRg());
            pst.setString(3, vet.getCpf());
            pst.setString(4, vet.getTelefone());
            pst.setInt(5, vet.getIdade());
            pst.setString(6, vet.getEmail());            
            pst.execute();
            JOptionPane.showMessageDialog(null, "Dados inseridos com sucesso!!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao inserir dados: "+ex.getMessage());
        }
        
        conex.desconecta();
    }
    
    public void Editar(Veterinario vet){
        conex.conexao();
        
        try {
            PreparedStatement pst = conex.con.prepareStatement("update veterinarios set nome_veterinario=?,rg_veterinario=?,cpf_veterinario=?,telefono_veterinario=?,idade_veterinario=?,email_veterinario=? where id_veterinario=? ");
            pst.setString(1, vet.getNome());
            pst.setString(2, vet.getRg());
            pst.setString(3, vet.getCpf());
            pst.setString(4, vet.getTelefone());
            pst.setInt(5, vet.getIdade());
            pst.setString(6, vet.getEmail());
            pst.setInt(7, vet.getCod());
            pst.execute();
            JOptionPane.showMessageDialog(null, "Dados alterados com sucesso!!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao altera veterinario: "+ex.getMessage());
        }
        
        conex.desconecta();
    }
    
    public void Excluir(Veterinario vet){
        conex.conexao();
        try {
            PreparedStatement pst = conex.con.prepareStatement("delete from veterinarios where id_veterinario=?");
            pst.setInt(1, vet.getCod());
            pst.execute();
            JOptionPane.showMessageDialog(null, "Dados excluidos com sucesso!!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao excluir veterinario: "+ex.getMessage());
        }
        
        conex.desconecta();
    }
    
    public Veterinario pesquisaVeterinario(Veterinario vet){
        conex.conexao();
        conex.executarSql("select *from veterinarios where nome_veterinario like'%"+vet.getPesquisa()+"%'");
        try {
            conex.rs.first();
            vet.setCod(conex.rs.getInt("id_veterinario"));
            vet.setNome(conex.rs.getString("nome_veterinario"));
            vet.setRg(conex.rs.getString("rg_veterinario"));
            vet.setCpf(conex.rs.getString("cpf_veterinario"));
            vet.setTelefone(conex.rs.getString("telefono_veterinario"));
            vet.setIdade(conex.rs.getInt("idade_veterinario"));
            vet.setEmail(conex.rs.getString("email_veterinario"));
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao pesquisar veterinario: "+ex.getMessage());
        }
        conex.desconecta();
        
        return vet;
    }
    
}
