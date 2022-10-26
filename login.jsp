<%@page import ="java.sql.*"%>
<h1>List of Flights with details :</h1>
<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","root");
Statement st=con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();
ResultSet rs=st.executeQuery("select * from flight");
ResultSet rs1=st1.executeQuery("select * from passenger");
ResultSet rs2=st2.executeQuery("select * from booking_record");
ResultSet rs3=st3.executeQuery("select * from checkin_record");



%>
<h1>List of all flights :</h1>
<table border=1>
<tr>
<th>Flight date</th>
<th>Flight Number</th>
<th>ID</th>
<th>Fare</th>
<th>Inv_ID</th>

</tr>
<%
while (rs.next()) {
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getInt(2)%></td>
<td><%=rs.getInt(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>

</tr>
<% } %>

</table><br><br>
<h1>Passenger Record :</h1>
<table border=1>
<tr>
<th>Id</th>
<th>First name</th>
<th>Gender</th>
<th>Last name</th>

<th>Booking ID</th>
<th>Booking Record</th>
</tr>
<%
while (rs1.next()) {
%>
<tr>
<td><%=rs1.getInt(1)%></td>
<td><%=rs1.getString(2)%></td>
<td><%=rs1.getString(3)%></td>
<td><%=rs1.getString(4)%></td>
<td><%=rs1.getString(5)%></td>
<td><%=rs1.getString(6)%></td>
</tr>

<% } %>
</table><br><br>
<h1>Booking Record :</h1>
<table border=1>
<tr>
<th>Booking Id</th>
<th>Bookind Date</th>
<th>Destination</th>
<th>Fare</th>
<th>Flight Date</th>
<th>Flight Number</th>
<th>origin</th>
<th>status</th>
</tr>
<%
while (rs2.next()) {
%>
<tr>
    <td><%=rs2.getInt(1)%></td>
<td><%=rs2.getString(2)%></td>
<td><%=rs2.getString(3)%></td>
<td><%=rs2.getString(4)%></td>
<td><%=rs2.getString(5)%></td>
<td><%=rs2.getString(6)%></td>
<td><%=rs2.getString(7)%></td>
</tr>
<% } %>
</table><br><br>
<h1>Checkin Record :</h1>
<table border=1>
<tr>
<th>Id</th>
<th>Booking Id</th>
<th>Checkin Time</th>
<th>First name</th>
<th>Last name</th>
<th>Flight Date</th>
<th>Flight Number</th>
<th>Seat Number</th>
</tr>
<%
while (rs3.next()) {
%>
<tr>
    <td><%=rs3.getInt(1)%></td>
<td><%=rs3.getString(2)%></td>
<td><%=rs3.getString(3)%></td>
<td><%=rs3.getString(4)%></td>
<td><%=rs3.getString(5)%></td>
<td><%=rs3.getString(6)%></td>
<td><%=rs3.getString(7)%></td>
<td><%=rs3.getString(8)%></td>
</tr>

<% } %>
</table><br><br>



<%
st.close();
st1.close();
st2.close();
st3.close();
con.close();
}
catch (Exception ae){
    ae.printStackTrace();
}
%>