package QuanLyThuVien;

import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class KetNoiSQLServer {
	public static void main(String[] args) {
		java.sql.Connection conn;
			try {
				
				String dbURL = "jdbc:sqlserver://localhost;databaseName=quanlythuvien;user=sa;password=phuong123";
				conn = DriverManager.getConnection(dbURL);
				if (conn != null) {
					JOptionPane.showMessageDialog(null, "Kết nối thành công");

				}
			} catch (SQLException ex) {
				JOptionPane.showMessageDialog(null, ""+ex);
			}		
	}
}
