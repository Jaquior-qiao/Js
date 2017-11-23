package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import comm.ConnectionManager;
import entity.Message;

public class MessageDao extends ConnectionManager
{
    Connection con=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
    public List GetMessageByISBN(String isbn)
    {
        Message mes=null;
        List list=new ArrayList();
        String sql="select * from message where isbn=?";
        
        try
        {
            
            con=this.getCon();
            pstmt=con.prepareStatement(sql);
            pstmt.setString(1,isbn );
            rs=pstmt.executeQuery();
            while(rs.next())
            {
                mes=new Message();
                mes.setMessageId(rs.getInt("MessageId"));
                mes.setUsername(rs.getString("username"));
                mes.setContent(rs.getString("Content"));
                mes.setTitle(rs.getString("Title"));
                mes.setWriteDate(rs.getString("WriteDate"));
                mes.setCount(rs.getInt("Count"));
                mes.setIsbn(rs.getString("isbn"));
                list.add(mes);
            }
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
    
    public int addMessage(Message message)
    {
        int num=0;
        String sql="insert into message(username, title, content, writeDate,isbn)values(?,?,?,?,?)";
        try
        {
            con=this.getCon();
            pstmt=con.prepareStatement(sql);
            pstmt.setString(1,message.getUsername());
            pstmt.setString(2,message.getTitle());
            pstmt.setString(3,message.getContent());
            pstmt.setString(4,message.getWriteDate());
            pstmt.setString(5,message.getIsbn());
            num=pstmt.executeUpdate();
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return num;
        
    }

    public List getMessage()
    {
        Message mes=null;
        List list=new ArrayList();
        String sql="select * from message";
        
        try
        {
            
            con=this.getCon();
            pstmt=con.prepareStatement(sql);
            rs=pstmt.executeQuery();
            while(rs.next())
            {
                mes=new Message();
                mes.setMessageId(rs.getInt("MessageId"));
                mes.setUsername(rs.getString("username"));
                mes.setContent(rs.getString("Content"));
                mes.setTitle(rs.getString("Title"));
                mes.setWriteDate(rs.getString("WriteDate"));
                mes.setCount(rs.getInt("Count"));
                mes.setIsbn(rs.getString("isbn"));
                list.add(mes);
            }
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
    /*
     * Date date = new Date(); 
		date��������ϵͳ��ʱ�� 
		���Ҫת��ĳ�ָ�ʽ���������ôд�� 
		String st = new String(new SimpleDateFormat("yyyy-MM-dd.HH:mm:ss ").format(date)); 

     */
    public int deleteMessageByMessageID(int messageID)
    {
    	int num=0;
    	String sql="delete from message where messageID=?";
    	try {
			con=this.getCon();
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,messageID);
			num=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO �Զ����� catch ��
			e.printStackTrace();
		}
		return num;
    }
    
}
