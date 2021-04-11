
package controle;

import java.sql.*;
import javax.swing.JOptionPane;


public class conexaoBD {
    
  public  Statement stm;
  public  ResultSet rs;
  private  String driver = "org.postgresql.Driver";
  private  String caminho = "jdbc:postgresql://localhost:5433/clinicaVeterinaria";
  private  String usuario = "postgres";
  private  String senha = "fabricio";
  public  Connection con;
  
  public void conexao(){ // metodo de conexão com o banco de dados
      
      try {
          System.setProperty("jdbc.Driver:", driver);
          con=DriverManager.getConnection(caminho, usuario, senha);
          //JOptionPane.showMessageDialog(null, "Conexão realizada com sucesso!!");
      } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null, "erro na conexão: "+ex.getMessage());
      }
  }
  
  public void executarSql(String sql){
      try {
          stm = con.createStatement(rs.TYPE_SCROLL_INSENSITIVE,rs.CONCUR_READ_ONLY);
          rs = stm.executeQuery(sql);
      } catch (SQLException ex) {
          JOptionPane.showMessageDialog(null, "erro ao executar sql: "+ex.getMessage());;
      }
  }
  
  public void desconecta(){ // metodo de desconectar ao banco de dados
      try {
          con.close();
          //JOptionPane.showMessageDialog(null, "BD deconectado com sucesso!!");
      } catch (SQLException ex) {
          JOptionPane.showMessageDialog(null, "erro ao se desconectar: "+ex.getMessage());

      }
  }
     
    
}
