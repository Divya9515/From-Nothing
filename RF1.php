<html>
 <head>
  <title>Forms</title>
  <link rel="stylesheet" type="text/css" href="C:\Users\foryo\Desktop\WT\myStyle.css" />
 </head>
 <body>
  <font color="#66B2FF">
  <h1 align="center">Registration Form</h1>
  <form action="register1.php" method="POST">
  <table align="center">
   <tr>
    <td>Name: </td>
    <td><input type="text" name="txt1" size="20px" maxlength="30"></td>
   </tr>
   <tr>
    <td>Password: </td>
    <td><input type="password" name="txt2" size="20px" maxlength="15"></td>
   </tr>
   <tr>
    <td>Gender: </td>
    <td><input type="radio" name="radio" value="male"> Male
       <input type="radio" name="radio" value="female">Female
    </td>
   </tr>
   <tr>
    <td>Qualification: </td>
    <td><input type="checkbox" name="ch1[]" value="BTech">B.Tech
       <input type="checkbox" name="ch1[]" value="MTech">M.Tech
    </td>
   </tr>
   <tr>
    <td>Course: </td>
    <td><select name="course" required>
        <option value="">Select</option>
        <option value="CSE">CSE</option>
        <option value="ECE">ECE</option>
        <option value="CIVIL">CIVIL</option>
        <option value="EEE">EEE</option>
       </select>
    </td>
   </tr>
   <tr>
    <td>Address: </td>
    <td><textarea name="txt3" rows="4" cols="15"></textarea>
    </td>
   </tr>
   <tr>
    <td><input type="reset" value="Clear"></td>
    <td><input type="submit" value="Submit"></td>
   </tr>
  </table>
  </form>
  </font>
 </body>
</html>