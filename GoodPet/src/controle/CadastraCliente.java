
package controle;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import modelo.Cliente;


public class CadastraCliente {
    
    conexaoBD conex = new conexaoBD();
    Cliente cl = new Cliente();
    
    public void Salvar(Cliente cl){
        conex.conexao();
        try {
            PreparedStatement pst = conex.con.prepareStatement("insert into clientes( nome_cliente,cpf_cliente,rg_clienet,telefone_cliente,idade_cliente,endereco_cliente,cidade_cliente,estado_cliente) values(?,?,?,?,?,?,?,?)");
            pst.setString(1, cl.getNome());
            pst.setString(2, cl.getCpf());
            pst.setString(3, cl.getRg());
            pst.setString(4, cl.getTelefone());
            pst.setInt(5, cl.getIdade());
            pst.setString(6, cl.getEndereco());
            pst.setString(7, cl.getCidade());
            pst.setString(8, cl.getEstado());
            pst.execute();
            JOptionPane.showMessageDialog(null, "Dados inseridos com sucesso!!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao inserir dados: "+ex.getMessage());
        }
        
        conex.desconecta();
    } 
    
    public void Editar(Cliente cl){
         conex.conexao();
        
        try {
            PreparedStatement pst = conex.con.prepareStatement("update clientes set nome_cliente=?,cpf_cliente=?,rg_clienet=?,telefone_cliente=?,idade_cliente=?,endereco_cliente=?,cidade_cliente=?,estado_cliente=? where id_cliente=? ");
           pst.setString(1, cl.getNome());
            pst.setString(2, cl.getCpf());
            pst.setString(3, cl.getRg());
            pst.setString(4, cl.getTelefone());
            pst.setInt(5, cl.getIdade());
            pst.setString(6, cl.getEndereco());
            pst.setString(7, cl.getCidade());
            pst.setString(8, cl.getEstado());
            pst.setInt(9, cl.getCod());
            pst.execute();
            JOptionPane.showMessageDialog(null, "Dados alterados com sucesso!!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao altera cliente: "+ex.getMessage());
        }
        
        conex.desconecta();
    }
    
    public void Excluir(Cliente cl){
        conex.conexao();
        try {
            PreparedStatement pst = conex.con.prepareStatement("delete from clientes where id_cliente=?");
            pst.setInt(1, cl.getCod());
            pst.execute();
            JOptionPane.showMessageDialog(null, "Dados excluidos com sucesso!!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao excluir cliente: "+ex.getMessage());
        }
        
        conex.desconecta();
    }
    
    public Cliente pesquisaCliente(Cliente cl){
        conex.conexao();
        conex.executarSql("select *from clientes where nome_cliente like'%"+cl.getPesquisa()+"%'");
        try {
            conex.rs.first();
            cl.setCod(conex.rs.getInt("id_cliente"));
            cl.setNome(conex.rs.getString("nome_cliente"));
            cl.setCpf(conex.rs.getString("cpf_cliente"));
            cl.setRg(conex.rs.getString("rg_clienet"));
            cl.setTelefone(conex.rs.getString("telefone_cliente"));
            cl.setIdade(conex.rs.getInt("idade_cliente"));
            cl.setEndereco(conex.rs.getString("endereco_cliente"));
            cl.setCidade(conex.rs.getString("cidade_cliente"));
            cl.setEstado(conex.rs.getString("estado_cliente"));
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao pesquisar cliente: "+ex.getMessage());
        }
        conex.desconecta();
        
        return cl;
    }
}
