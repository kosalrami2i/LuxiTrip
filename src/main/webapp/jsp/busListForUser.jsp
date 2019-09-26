<html>
  <head>
    <link rel="stylesheet" type="text/css" href="../css/busListForUser.css" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script>
      function myFunction() {
      alert("Clicked");
      }
</script>
  </head>
  <body>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
       <a class="navbar-brand" href="#">LuxiTrip</a>
     <!--<a class="navbar-brand" href="#"><img class="imgg" ></a>-->
    </div>
    <ul class="nav navbar-nav">
    <li class="active"><a href="#">View Bookings</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
  <form>
    <div>
      <c:forEach var="bus" items="${Buses}">
        <div class="divbox ">
          <fieldset class="divfieldset">
          <div class="col-sm-4">
            <div class="font">Operator</div></br>
            <div class="font">Bus type</div>
          </div>
          <div class="col-sm-6">
            <div class="one font">start time</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="one">hrs</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="one font">Arrival time</div>
         </div>
         <div class="col-sm-2">
            <div class="one two font">INR 650</div>
            <div class="form-btn">
             <button type="submit"class="submit-btn" onclick="myFunction()">View Seats</button>
              </div>
         </div>
            <!--<table cellpadding="5px" class="allemployee">
              <tr>
                <td>Operator</td>
                <td>
                  <c:out value="${employee.id}" />
                </td>
              </tr>
              <tr>
                <td>Bus Type</td>
                <td>
                  <c:out value="${employee.name}" />
                </td>
              </tr>
            </table>-->
            <!--<form action="displayEmployees" method="get">
              <center>
                <td> <input type="hidden" name="id" value= "${employee.id}" /></td>
                <button type="submit" value="delete" target="_self" class="button remove" >
                  <i class="fa fa-trash" aria-hidden="true"></i>
                </button>
                <button type="submit" value ="search" target="_self" class="button update" >
                  <i class="fa fa-pencil-square-o"></i></button>
                <button type="submit" value="display" target="_self" class="button display">
                  <i class="fa fa-eye"></i></button>
              </center>
            </form>-->
        </div>
        </fieldset>
      </c:forEach>
    </div>
    </form>
  </body>
</html>
