<%@page import = "java.sql.*" %>
<% String a = request.getParameter("t1");
String b = request.getParameter("t2");
String c = request.getParameter("t3");
String d = request.getParameter("t4");
String e = request.getParameter("t5");
System.out.print(a);
System.out.print(b);
System.out.print(c);
%>

<%
Connection con = null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","root");
    PreparedStatement ps = con.prepareStatement("insert into flight values(?,?,?,?,?)");
	ps.setString(1,a);
	ps.setInt(2,Integer.parseInt(b));
	ps.setInt(3,Integer.parseInt(c));
	ps.setString(4,d);
	ps.setString(5,e);
	ps.execute();
}
catch(Exception ae)
{
	ae.printStackTrace();
}

	

%>

