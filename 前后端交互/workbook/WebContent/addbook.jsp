<%@ page language="java" import="dao.*,entity.*,java.util.*" pageEncoding="gbk"%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>����Ա-���</title>
<link rel="stylesheet" type="text/css" href="left.files/style_admin.css">

<script type="text/javascript">
		function fun_check_form(){
			if(document.form1.serialNumber.value==""){
				alert("��������Ʒ��ţ�ϵ�У���Ϣ��Ϣ��");
				return false;
			}else if(document.form1.name.value==""){
				alert("��������Ʒ���ơ�");
				return false;
			}else if(document.form1.brand.value==""){
				alert("��������Ʒ�̱ꡣ");
				return false;
			}else if(document.form1.model.value==""){
				alert("��������Ʒ�ͺš�");
				return false;
			}else if(document.form1.price.value==""){
				alert("��������Ʒ�۸�");
				return false;
				if(!isNaN(document.form1.price.value)){
					alert("");
					return false;
				}
			}else{
				return true;
			}
		}
		
		
		 function   checkIsFloat(){  
          var   nc=event.keyCode;            
          if(nc < 48 || nc > 57 ){         
          		if(nc==46){  
              		var s=document.form1.price.value;  
              		for(var   i=0;i<s.length;i++){  
                 		 if(s.charAt(i)=='.'){  
                      		 event.keyCode=0;   
                      		 return;  
                  		}  
              		}  
          		}else{  
             		 event.keyCode=0;return;  
          
      			}
      		}
      }  
		</script>
</head>

<body>
<form action="UpLoadBookImageServlet" method="post" enctype="multipart/form-data" >
<table cellspacing="1" cellpadding="4" width="100%" class="tableborder"
	id="table3">
	
	 <tr>
			   <td>�ϴ�ͼƬ</td>
			   <td><input type="file" name="f"> </td>
	        </tr>	
	        <tr>
			   <td><input type="submit" value="�ϴ�" ></td>
			   <td></td>
			</tr>
</table></form>
<form name="form1" action="AddBookManage" method="post"
	onSubmit="return fun_check_form()">
<table cellspacing="1" cellpadding="4" width="100%" class="tableborder"
	id="table3">

	<input type="hidden" name="action" value="save">
	<tr>
		<td colspan="12" class="header">���ͼ����Ϣ</td>
	</tr>
	<tr>
		<td class="altbg1">ͼ�����ƣ�</td>
		<td class="altbg2" colspan="11"><input type="text"
			name="title" size="34"></td>
	</tr>
	<tr>
		<td class="altbg1">ͼ�����ߣ�</td>
		<td class="altbg2" colspan="11"><input type="text" name="author"
			size="34"></td>
	</tr>
	<tr>
		<td class="altbg1">ͼ���ţ�</td>
		<td class="altbg2" colspan="11"><input type="text" name="isbn"
			size="34"></td>
	</tr>
	<tr>
		<td class="altbg1">�������ڣ�</td>
		<td class="altbg2" colspan="11"><input type="text" name="copyright"
			size="34"></td>
	</tr>
	<tr>
		<td class="altbg1">ͼ��۸�</td>
		<td class="altbg2" colspan="11"><input type="text" name="price"
			size="34" onkeypress="checkIsFloat();" /></td>
	</tr>
	
	<tr>
		<td class="altbg1">������̣�</td>
		<td class="altbg2" colspan="20">
		
		<select name="cbPublisher">
		<%
			PublisherOperation po=new PublisherOperation();
			Publishers p=new Publishers();
			List list=po.getAllPublisher();
			for(int i=0;i<list.size();i++){
				p=(Publishers)list.get(i);
				%>
				
			<option value="<%=p.getPublisherId() %>"><%=p.getPublisherName() %></option>
			<%
			}
		 %>
		</select>
</td>
	</tr>
	<tr>
		<td class="altbg1">ͼ����ܣ�</td>
		<td class="altbg2" colspan="11"><textarea rows="5" cols="60"
			name="description"></textarea></td>
	</tr>


	<tr>
		<td class="altbg1"></td>
		<td class="altbg2" colspan="11"><input type="submit" value="�ύ"
			name="B1" /> &nbsp; <input type="reset" value="����" name="B2" /></td>
	</tr>

</table>
</form>
</body>

</html>
