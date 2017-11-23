package dao;

import java.sql.*;

import comm.ConnectionManager;

public class ProcessCreditCard implements IProcessCredit {

	public int creditProcess(String creditCard, double total) throws SQLException {
		int result=0;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		con=ConnectionManager.getCon();
		String strSql="update Account set balance=balance-? where creditcard=?";
		try {
			pstmt.setDouble(1,total);
			pstmt.setString(2, creditCard);
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			ConnectionManager.allClose(con, pstmt, rs);
		}
		return result;
	}

}
