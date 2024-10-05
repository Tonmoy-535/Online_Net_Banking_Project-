
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration Page</title>
<link href="AccountCreation (1).css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:powderblue;">
<h3 style="color: blue;">MONEY BANK</h3>
<div class="navbar">
 <h2 class="active" >REGISTRATION OF A NEW CUSTOMER</h2>
</div>
<p>

<form action="CustomerRegistrationServe" method="post">
<table class ="hi" style=" background-color:#FFFFE0">
<tr>
<td><label>Enter Customer ID</label></td>
<td><input type="text"placeholder="Enter Customer ID" name="cid"></td>
</tr>
<tr>
<td><label>Enter Customer Name</label></td>
<td><input type="text"placeholder="Enter Customer Name" name="cname"></td>
</tr>
<tr>
<td><label>Enter Phone Number</label></td>
<td><input type="number" placeholder="Enter Phone Number"name="cphno"></td>
</tr>
<tr>
<td><label>Enter Email ID</label></td>
<td><input type="email"placeholder="Enter Email ID" name="cemail"></td>
</tr>
<tr>
<td><label>Enter Aadhar Card Number</label></td>
<td><input type="text" placeholder="Enter Aadhar Card Number"name="adharno"></td>
</tr>
<tr>
<td><label>Enter Pan Card Number</label></td>
<td><input type="text" placeholder="Enter Pan Card Number"name="pancardno"></td>
</tr>
<tr>
<td><label>Enter Date Of Birth</label></td>
<td><input type="date" placeholder="DD/MM/YYYY"name="dob"></td>
</tr>
<tr>
<td><label>Choose Gender</label></td>
<td><select name="gender">
<option value=""></option>
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Others">Others</option>
</select>
</td>
</tr>
<tr>
<td><label>City</label></td>
<td><select name="city">
<option value=""></option>
<option value="Adoni">Adoni</option>
<option value="Amaravati">Amaravati</option>
<option value="Anantapur">Anantapur</option>
<option value="Chittoor">Chittoor</option>
<option value="Cuddapah">Cuddapah</option>
<option value="Eluru">Eluru</option>
<option value="Guntur">Guntur</option>
<option value="Kothagudem">Kothagudem</option>
<option value="Kurnool">Kurnool</option>
<option value="Lepakshi">Lepakshi</option>
<option value="Nagarjunakonda">Nagarjunakonda</option>
<option value="Nellore">Nellore</option>
<option value="Puttaparthi">Puttaparthi</option>
<option value="Srikakulam">Srikakulam</option>
<option value="Vijaywada">Vijaywada</option>
<option value="Visakhapatnam">Visakhapatnam</option>
<option value="Ahmedabad">Ahmedabad</option>
<option value="Bharuch">Bharuch</option>
<option value="Bhavnagar">Bhavnagar</option>
<option value="Bhuj">Bhuj</option>
<option value="Champaner">Champaner</option>
<option value="Dwarka">Dwarka</option>
<option value="Gandhinagar">Gandhinagar</option>
<option value="Gondal">Gondal</option>
<option value="Jamnagar">Jamnagar</option>
<option value="Junagarh">Junagarh</option>
<option value="Lothal">Lothal</option>
<option value="Mandvi">Mandvi</option>
<option value="Modhera">Modhera</option>
<option value="Palitana">Palitana</option>
<option value="Patan">Patan</option>
<option value="Pavagadh">Pavagadh</option>
<option value="Porbandar">Porbandar</option>
<option value="Rajkot">Rajkot</option>
<option value="Sasangir">Sasangir</option>
<option value="Somnath">Somnath</option>
<option value="Surat">Surat</option>
<option value="Uteliya">Uteliya</option>
<option value="Vadodara">Vadodara</option>
<option value="Veraval">Veraval</option>
<option value="Zainabad">Zainabad</option>
<option value="Ahmadnagar">Ahmadnagar</option>
<option value="Akola">Akola</option>
<option value="Amravati">Amravati</option>
<option value="Aurangabad">Aurangabad</option>
<option value="Bhiwandi">Bhiwandi</option>
<option value="Bhusawal">Bhusawal</option>
<option value="Chandrapur">Chandrapur</option>
<option value="Dhule">Dhule</option>
<option value="Ichalkaranji">Ichalkaranji</option>
<option value="Jalgaon">Jalgaon</option>
<option value="Jalna">Jalna</option>
<option value="Kolhapur">Kolhapur</option>
<option value="Latur">Latur</option>
<option value="Malegaon">Malegaon</option>
<option value="Mumbai">Mumbai</option>
<option value="Nagpur">Nagpur</option>
<option value="Nashik">Nashik</option>
<option value="NaviMumbai">NaviMumbai</option>
<option value="Panvel">Panvel</option>
<option value="Parbhani">Parbhani</option>
<option value="Pune">Pune</option>
<option value="Sangli">Sangli</option>
<option value="Solapur">Solapur</option>
<option value="VasaiVirar">VasaiVirar</option>
<option value="Chennai">Chennai</option>
<option value="Coimbatore">Coimbatore</option>
<option value="Cuddalore">Cuddalore</option>
<option value="Dindigul">Dindigul</option>
<option value="Erode">Erode</option>
<option value="Hosur">Hosur</option>
<option value="Kanchipuram">Kanchipuram</option>
<option value="Karaikudi">Karaikudi</option>
<option value="Karur">Karur</option>
<option value="Kumarapalayam">Kumarapalayam</option>
<option value="Kumbakonam">Kumbakonam</option>
<option value="Madurai">Madurai</option>
<option value="Nagercoil">Nagercoil</option>
<option value="Neyveli">Neyveli</option>
<option value="Ranipettai">Ranipettai</option>
<option value="Salem">Salem</option>
<option value="Sivakasi">Sivakasi</option>
<option value="Thanjavur">Thanjavur</option>
<option value="Thoothukkudi">Thoothukkudi</option>
<option value="Tiruchirappalli">Tiruchirappalli</option>
<option value="Tirunelveli">Tirunelveli</option>
<option value="Tiruppur">Tiruppur</option>
<option value="Tiruvannamalai">Tiruvannamalai</option>
<option value="Udhagamandalam">Udhagamandalam</option>
<option value="Agra">Agra</option>
<option value="Aligarh">Aligarh</option>
<option value="Allahabad">Allahabad</option>
<option value="Bareily">Bareily</option>
<option value="Etawah">Etawah</option>
<option value="Faizabad">Faizabad</option>
<option value="Farrukhabad">Farrukhabad</option>
<option value="Firozabad">Firozabad</option>
<option value="Ghaziabad">Ghaziabad</option>
<option value="Gorakhpur">Gorakhpur</option>
<option value="Hapur">Hapur</option>
<option value="Jhansi">Jhansi</option>
<option value="Kanpur">Kanpur</option>
<option value="Lucknow">Lucknow</option>
<option value="Mathura">Mathura</option>
<option value="Meerut">Meerut</option>
<option value="Moradabad">Moradabad</option>
<option value="Muzaffarnagar">Muzaffarnagar</option>
<option value="Noida">Noida</option>
<option value="Rampur">Rampur</option>
<option value="Saharanpur">Saharanpur</option>
<option value="Shahjahanpur">Shahjahanpur</option>
<option value="Varanasi">Varanasi</option>
<option value="Asansol">Asansol</option>
<option value="Baharampur">Baharampur</option>
<option value="Balurghat">Balurghat</option>
<option value="Bardhaman">Bardhaman</option>
<option value="Dankuni">Dankuni</option>
<option value="Dhulian">Dhulian</option>
<option value="Durgapur">Durgapur</option>
<option value="Habra">Habra</option>
<option value="Haldia">Haldia</option>
<option value="Jalpaiguri">Jalpaiguri</option>
<option value="Kharagpur">Kharagpur</option>
<option value="Kolkata">Kolkata</option>
<option value="Krishnanagar">Krishnanagar</option>
<option value="Medinipur">Medinipur</option>
<option value="Nabadwip">Nabadwip</option>
<option value="Raiganj">Raiganj</option>
<option value="Ranaghat">Ranaghat</option>
<option value="Shantipur">Shantipur</option>
<option value="Siliguri">Siliguri</option>
</select>
</td>
</tr>
<tr>
<td><label>Enter Plot Number</label></td>
<td><input type="text"placeholder="Enter Plot Number" name="plotno"></td>
</tr>
<tr>
<td><label>Enter Street Name</label></td>
<td><input type="text"placeholder="Enter Street Name" name="streetnm"></td>
</tr>
<tr>
<td><label>Enter Pincode</label></td>
<td><input type="number" placeholder="Enter Pincode"name="pincode"></td>
</tr>
<tr>
<td><label>Enter Password</label></td>
<td><input type="password" placeholder="Enter Password"name="password"></td>
</tr>
</table>
<center>
<p>
<button style="border: 2px solid Tomato;" type="submit" value="Submit">Register</button><br>

</p>
</center>
</form>
<br>
<a href="">

</a>
<br>
<center>
<a href="Admin_Menu.jsp">BACK</a>
</center>
<br>
<br>

</body>
</html>