<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Abc Taxi</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style type="text/css">
body
{
background-image: url("https://i.pinimg.com/originals/d9/de/8e/d9de8eeb9dc20fea9100aa11c701d791.jpg");
background-size: cover;
background-repeat: none;
font-family: -apple-system, BlinkMacSystemFont, “Segoe UI”, Roboto, “Helvetica Neue”, Arial, sans-serif, “Apple Color Emoji”, “Segoe UI Emoji”, “Segoe UI Symbol”;
/* default is 1rem or 16px */
font-size: 20px;
font-weight: 400;
line-height: 1.5;
}
{
color:white;
}
.form-control
{
background: #fafbfd;
}

</style>
</head>
<body>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3  box-shadow " >

      <h1 class="my-0 mr-md-auto font-weight-normal" style="color:green">ABC Taxi</h1>
    
      <nav class="my-2 my-md-0 mr-md-3">
      
        <a class="p-2 text-white" href="/">Home</a>
        <a class="p-2 text-white" href="/Car">Add Car</a>
         
          <a class="p-2 text-white" href="/Driver">Add Drivers</a>
           <a class="p-2 text-white" href="/onlineDriver">Online Drivers</a>
        <a class="p-2 text-white" href="#"></a>
        <a class="p-2 text-white" href="logout"> <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-log-out"></span><%= session.getAttribute("usernames") %>&nbsp; Log out
        </button></a>
      </nav>
        <form class="form-inline my-2 my-lg-0" action="searchname" method="post">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" name="user_name" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search Users</button>
    </form>
  
    </div>
