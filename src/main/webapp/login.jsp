<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Login</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
  <form action="loginActions"  method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">User Name</label>
    <input type="text" class="form-control" name="user_name" aria-describedby="emailHelp" placeholder="Enter email">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="user_password" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-check">
    
    <label class="form-check-label" for="exampleCheck1">Do you haven<sup>'</sup>t account Please <a href="" id="signin"  data-toggle="modal" data-target="#signupmodal"  >Sign Up</a>...
    </label>
  </div>
  

      </div>
      <div class="modal-footer">

        <button type="submit" class="btn btn-primary">Sign In</button>
                
      </div>
      </form>
    </div>
  </div>
</div>
   
<%@ include file = "signup.jsp" %>   

<script>
$('#signin').on('click',function(){
	$('#exampleModalCenter').modal('hide');
});</script>