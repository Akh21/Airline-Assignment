<%@page import = "java.sql.*" %>
<% String a = request.getParameter("t1");
String b = request.getParameter("t2");
String c = request.getParameter("t3");
String d = request.getParameter("t4");
String e = request.getParameter("t5");
String f = request.getParameter("t6");
String g = request.getParameter("t7");
String h = request.getParameter("t8");
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
    PreparedStatement ps = con.prepareStatement("insert into checkin_record values(?,?,?,?,?,?,?,?)");
    ps.setInt(1,Integer.parseInt(a));
	ps.setString(2,b);
	ps.setString(3,c);
	ps.setString(4,d);
	ps.setString(5,e);
    ps.setString(6,f);
    ps.setString(7,g);
    ps.setString(8,h);
	ps.execute();
}
catch(Exception ae)
{
	ae.printStackTrace();
}

	

%>

