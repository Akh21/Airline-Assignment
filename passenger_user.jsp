<%@page import = "java.sql.*" %>
<% String a = request.getParameter("t1");
String b = request.getParameter("t2");
String c = request.getParameter("t3");
String d = request.getParameter("t4");
String e = request.getParameter("t5");
String f = request.getParameter("t6");
String g;

System.out.print(c);

if(c.equals("on")){
     g = "male";
}
else{
    g = "female";
}



%>

<%
Connection con = null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","root");
    PreparedStatement ps = con.prepareStatement("insert into passenger values(?,?,?,?,?,?)");
	ps.setInt(1,Integer.parseInt(a));
	ps.setString(2,b);
	ps.setString(3,g);
	ps.setString(4,d);
	ps.setString(5,e);
	ps.setString(6,f);
	
	ps.execute();
}
catch(Exception ae)
{
	ae.printStackTrace();
}

	

%>

