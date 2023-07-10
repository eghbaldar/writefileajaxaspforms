<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
  
  <body runat="server">


      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>


      
     <script type="text/javascript">  
         $(document).ready(function () {

             var Data = {
                 'name': 'luck'
             };

             $.ajax({
                 type: "POST",
                 url: "WebService1.asmx/HelloWorld",
                 contentType: "application/x-www-form-urlencoded",
                 datatype: "json",
                 data: Data,
                 success: function () {
                     alert("Created!");
                 },
                 error: function (xhr, w, e) {
                     alert(xhr.responseText);
                 }
             });
         });  
</script> 
  </body>
</html>
