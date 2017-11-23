package javaweb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import comm.ConnectionManager;

public class MenuOp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MenuOp mo = new MenuOp();
		List<Menus> objList = mo.getMenus();
		 for (int i=0; i<objList.size(); i++)
		    {
		 // 循环输出集合中的每个对象
		 Menus me = (Menus) objList.get(i);
		 System.out.println(me.toString());
		 }

	}
	
	//
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public List<Menus> getMenus(){
		List<Menus> list=new ArrayList();
		Menus me=null;
		String sql="select * from menu_2 ";
		try {
			con=ConnectionManager.getCon();
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				me=new Menus();
				me.setMenu1Id(rs.getInt("idmenu_2"));
				me.setTextword(rs.getString("text"));
				me.setForeignid(rs.getInt("foreignid"));
				list.add(me);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			ConnectionManager.allClose(con, pstmt, rs);
		}
		return list;
	}
}
