package javaweb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import comm.ConnectionManager;

public class PictureOp {
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public List<Picture> getMenus(){
		List<Picture> list=new ArrayList();
		Picture pic=null;
		String sql="select * from pictures ";
		try {
			con=ConnectionManager.getCon();
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				pic=new Picture();
				pic.setPictureId(rs.getInt("idpictures"));
				pic.setUrl(rs.getString("url"));
				pic.setDescription(rs.getString("description"));
				list.add(pic);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			ConnectionManager.allClose(con, pstmt, rs);
		}
		return list;
	}

}
