package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import comm.ConnectionManager;
import entity.BookBean;

public class TitlesBean extends ConnectionManager{
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	public List getTitles(){
		
		String sql="select * from titles";
		BookBean bb=null;
		List list=new ArrayList();
		try {
			//Context ic=new InitialContext();
			//DataSource ds=(DataSource)ic.lookup("java:comp/env/jdbc/books");
			//con=ds.getConnection();
			con=this.getCon();
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				//isbn, title, editionNumber, copyright, publisherID, imageFile, price
				bb=new BookBean();
				bb.setCopyright(rs.getString("copyright"));
				bb.setImageFile(rs.getString("imageFile"));
				bb.setIsbn(rs.getString("isbn"));
				bb.setPrice(rs.getDouble("price"));
				bb.setPublisherID(rs.getInt("publisherID"));
				bb.setTitle(rs.getString("title"));
				bb.setAuthor(rs.getString("author"));
				bb.setDescription(rs.getString("description"));
				list.add(bb);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.allClose(con, pstmt, rs);
		}
		return list;
	}
	public BookBean getTitleByIsbn(String id){
		String sql="select * from titles where isbn=?";
		BookBean bb=null;
		List list=new ArrayList();
		try {
			con=this.getCon();
			//Context ic=new InitialContext();
			//DataSource ds=(DataSource)ic.lookup("java:comp/env/jdbc/books");
			//con=ds.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,id);
			rs=pstmt.executeQuery();
			while(rs.next()){
				//isbn, title, editionNumber, copyright, publisherID, imageFile, price
				bb=new BookBean();
				bb.setCopyright(rs.getString("copyright"));
				//bb.setEditionNumber(rs.getInt("editionNumber"));
				bb.setImageFile(rs.getString("imageFile"));
				bb.setIsbn(rs.getString("isbn"));
				bb.setPrice(rs.getDouble("price"));
				bb.setPublisherID(rs.getInt("publisherID"));
				bb.setTitle(rs.getString("title"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.allClose(con, pstmt, rs);
		}
		return bb;
		
	}
}
