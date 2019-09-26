<!DOCTYPE html>
<head>
   <meta charset="UTF-8" />
   <title>Luxitrip</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css' />
   <link rel="stylesheet" type="text/css" href="../css/confirmation.css" />
   <style>
   input{
   border:none;
   }
   </style>
</head>
<body>
<div id="booking" class="section">
      <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">LuxiTrip</a>
        </div>
        
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#" onClick="openForm()"><span class="glyphicon glyphicon-user"></span> profile</a></li>
          <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>
      </div>
    </div>
<div class="container-fluid">
        <div class="row">
            <div class="">
                <div class="tile">
                    <div class="wrapper">
                        <div class="header"><h1>Ticket Details</h1></div>

                        

                        <div class="dates">
                            <div class="start">
                            <c:forEach var="bus" items="${reservation.bus}">
                                <strong><h5>Bus Number</h5></strong> 
                                <span></span>
                                <input type="text" name="busNumber"  value = "<c:out value='${bus.busNumber}' />"/readonly>
                                </c:forEach>
                            </div>
                            <div class="start">
                            <c:forEach var="user" items="${reservation.user}">
                                <strong><h5>Username</h5></strong> 
                                <span></span>
                                <input type="text" name="name"  value = "<c:out value='${user.name}' />"/readonly>
                                </c:forEach>
                            </div>
                        </div>

                        <div class="dates">

                            <div>
                                <c:forEach var="fare" items="${reservation.fare}">
                                <strong><h5>Source</h5></strong> 
                                <span></span>
                                <input type="text" name="source"  value = "<c:out value='${fare.source}' />"/readonly>
                                </c:forEach>
                            </div>

                            
                            <div>
                                <c:forEach var="fare" items="${reservation.fare}">
                                <strong><h5>Destination</h5></strong> 
                                <span></span>
                                <input type="text" name="destination"  value = "<c:out value='${fare.destination}' />"/readonly>
                                </c:forEach>
                            </div>

                        </div>

                        <div class="dates">
                            
                            <div>
                                <c:forEach var="seat" items="${reservation.seats}">
                                <strong><h5>Seat</h5></strong> 
                                <span></span>
                                <input type="text" name="seatNumber"  value = "<c:out value='${fare.seatNumber}' />"/readonly>
                                </c:forEach>
                            </div>
                            
                            <div>
                                <c:forEach var="fare" items="${reservation.fare}">
                                <strong><h5>Price</h5></strong> 
                                <span></span>
                                <input type="text" name="name"  value = "<c:out value='${fare.price}' />"/readonly>
                                </c:forEach>
                            </div>
                        </div>

                        <div class="d">

                            <div>
                                <strong><h3>Total Cost</h3></strong> 
                                <span></span>
                                <input type="text" name="name"  value = "value='${reservation.total}' />"/readonly>
                            </div>

                           <div class="footer">
                           
                           </div>

                        </div>
                    </div>
                </div> 
            </div>
        </div>    
     </body>
</html>
