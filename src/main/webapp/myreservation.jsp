<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Member"%>
<%@page import="model.Reservation"%>
<%@page import="Dao.MemberDao"%>
<%@page import="Dao.ReservationDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
   <head>
        <link href="CSS/myreservation.css" rel="stylesheet" type="text/css">
        <link href="CSS/header.css" rel="stylesheet" type="text/css">
		<link href="CSS/footer.css" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
		<script src="https://kit.fontawesome.com/57c659bf44.js" crossorigin="anonymous"></script>
        <meta charset="UTF-8">
        <title>My Reservations</title>
    </head>
	
	<body>

		<%
			int userid = (int) request.getSession(false).getAttribute("userID");

			MemberDao memberDao = new MemberDao();
			Member member = memberDao.getUserByID(userid);

			ReservationDao reservationDao = new ReservationDao();
			ArrayList<Reservation> reservationList = reservationDao.getReservations(userid);
		%>


	  <!--body-->
	  <div class="main-content">
	    <!-- header and navbar -->
	    <!-- Top navbar -->
	    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
	      <div class="container-fluid">
	        <!-- logo -->
	        <a class="logo d-lg-inline-block" href="homepage.jsp"><img src="pictures/logo.png" width="130px" height="50px"></a>
	        <!-- links -->
	        <ul class="navbar-nav align-items-center d-md-flex">
			  <li class="nav-item">
                <h3><a class="nav-link" href="homepage.jsp" role="button">Home</a></h3>
              </li>
              <li class="nav-item">
                <h3><a class="nav-link" href="myreservation.jsp" role="button">My reservations</a></h3>
              </li>
              <li class="nav-item">
                <h3><a class="nav-link" href="contactus.jsp" role="button">Contact Us</a></h3>
              </li>
              <li class="nav-item">
                <h3><a class="nav-link" href="feedback.jsp" role="button">Feedback</a></h3>
              </li>
            </ul>
	        <!-- User -->
	        <ul class="navbar-nav align-items-center d-md-flex">
	          <li class="nav-item dropdown">
	            <a class="nav-link pr-0 dropbtn" href="#" role="button" aria-haspopup="true" aria-expanded="false">
	              <div class="user">
	                <span class="avatar">
	                  <img alt="Image placeholder" src="data:image/gif;base64,<%=member.getProfilepic()%>">
	                </span>
	                <div class="username d-lg-block">
	                  <span> <%=member.getUsername()%> <i class="fas fa-caret-down"></i></span>
	                </div>
	              </div>
	            </a>
				<div class="dropdown-content">
					<a href="user.jsp"><i class="fas fa-user-alt"></i>  View Profile</a>
					<a href="login.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
				</div>
	          </li>
	        </ul>
	      </div>
	    </nav>
	    <!-- Header bg image -->
	    <div class="header pt-lg-8" style="min-height: 100px;">
	    </div>
	    <!-- Page content -->
	    <div class="container-fluid mt--7">
        	<div class="col-xl-8 order-xl-1">
	          <div class="card bg-secondary shadow">
	            <div class="card-header bg-white border-0">
	              <div class="row align-items-center">
	                <div class="col-8">
	                  <h3 class="mb-0">My Reservations</h3>
	                </div>
	                <div class="col-4 text-right">
	                  <a href="homepage.jsp" class="btn btn-sm btn-primary">New Reservation</a>
	                </div>
	              </div>
	            </div>
	            <div class="card-body">
	             	<table>
					 	<tr>
						  <th>Reservation ID</th>
						  <th>From</th>
						  <th>To</th>
						  <th>Date</th>
						  <th>Time</th>
						  <th>Bus ID</th>
						  <th>Passengers</th>
						  <th>Payment</th>
						</tr>
						<tr></tr>
						<tr></tr>
						<tr></tr>

						<%for(Reservation reservation: reservationList){ %>
						<tr>
						   <td><%=reservation.getReservationID()%></td>
						   <td><%=reservation.getFrom()%></td>
						   <td><%=reservation.getTo()%></td>
						   <td><%=reservation.getDate()%></td>
						   <td><%=reservation.getTime()%></td>
						   <td><%=reservation.getBusID()%></td>
						   <td><%=reservation.getPassengers()%></td>
						   <td><%=reservation.getAmount()%></td>
						</tr>
						<tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
						<%}%>
					</table>
	            </div>
	          </div>
	        </div>
			<br><br>
			<center>
				<p> To cancel reservations go to <a href="user.jsp"><u>profile page</u></a></p> 
			</center>
        </div>
        <br><br><br>
	  </div>
	  	<!-- Site footer -->
	  	<footer>
			<div class="footer-distributed">
				<div class="footer-left" >
					<img src = "pictures/footerlogo.png" width="220px" height="90px">
					<p class="footer-links">
					<p>Hotline: +9411 24526 95 | +9411 24526 94</p>
					<p>Email: mjtt@gmail.com | info@mjttreservation.com</p>
					</p>
					<p class="footer-company-name">MJTT Reservation &copy; 2021</p>
				</div>    
			
			<div class="footer-center">
				<br><br><br><br><br><br><br>
				<div class="field">    
					<a href="https://www.sliit.lk/" class="sns-btn sns-btn--twitter">
						<i class="sns-btn__icon fab fa-twitter"></i>
					</a>  
					<a href="https://www.sliit.lk/" class="sns-btn sns-btn--facebook">
						<i class="sns-btn__icon fab fa-facebook-f"></i>
					</a>
					<a href="https://www.sliit.lk/" class="sns-btn sns-btn--instagram">
						<i class="sns-btn__icon fab fa-instagram"></i>
					</a>
				</div>
			</div>	
			<div class="footer-right">
				<p class="footer-company-about">
				<span>About MJTT Reservation</span>
				<p>Your online portal to reserve Sri Lanka Transport Board passenger transit services, across Sri Lanka.</p>
			</div>
	  </footer>    
	  <!-- Footer End --> 
	</body>
</html>
