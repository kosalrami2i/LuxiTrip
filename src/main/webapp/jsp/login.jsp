<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<head>
 
   <meta charset="UTF-8" />
   <title>Luxitrip</title>
   <link rel = "icon" href = "4339.png" style = "width:100px">
   <link rel="stylesheet" type="text/css" href="login.css" />
   <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
</head>
<body>
   <div class="container">
      <button><img  class = "img" src = "4339.png"></button>
      <header>
         <h1>Welcome Back</h1>
         <h1>Login to LUXITRIP</h1>
      </header>
      <section>
         <div id="container_demo" >
            <a class="hiddenanchor" id="toregister"></a>
            <a class="hiddenanchor" id="tologin"></a>
            <div id="wrapper">
               <div id="login" class="animate form">
                  <form action="" autocomplete="on">
                     <h1>Log in</h1>
                     <p> 
                        <label class="uname" >Email or Mobile </label>
                        <input id="username" name="username" required="required" type="text" placeholder="mymail@mail.com or xxxxxxxxxx"/>
                     </p>
                     <p> 
                        <label for="password" class="youpasswd">Password </label>
                        <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                     </p>
                     <p class="login button"> 
                        <a href="http://cookingfoodsworld.blogspot.in/" target="_blank" ></a>
                     </p>
                     <p class="change_link">
                        Not a member yet ?
                        <a href="#toregister" class="to_register">Join us</a>
                     </p>
                  </form>
               </div>
               <div id="register" class="animate form">
                  <form:form  action="" autocomplete="on">
                     <h1> Sign up </h1>
                     <p> 
                        <form:label>Username</form:label>
                        <form:input required="required" path="name" type="text" placeholder="username690" />
                     </p>
                     <p> 
                        <form:label>Email</form:label>
                        <form:input required="required" path="emailId" type="email" placeholder="mysupermail@mail.com"/> 
                     </p>
                     <p> 
                        <label>Mobile Number</label>
                        <form:input type="tel" required="required" path="number" placeholder="xxxxxxxxxx"/> 
                     </p>
                     <label>Password </label>
                     <form:input required="required" path="password1" type="password" placeholder="X8df!90EO"/>
                     <p> 
                        <label>Please confirm your password </label>
                        <form:input required="required" type="password2" placeholder="eg. X8df!90EO"/>
                     </p>
                     <p>
                     
                     </p>
                     <p class="signin button"> 
                        <input type="submit" value="Sign up"/> 
                     </p>
                     <p class="change_link">  
                        Already a member ?
                        <a href="#tologin" class="to_register"> Go and log in </a>
                     </p>
                  </form:form>
               </div>
            </div>
         </div>
      </section>
   </div>
</body>
</html>
