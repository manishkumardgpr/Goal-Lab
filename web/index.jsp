<%-- 
    Document   : index
    Created on : 27 May, 2016, 1:17:52 AM
    Author     : MANISH ARJUN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="my_source.Store" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Home Page</title>
		<link type="text/css" href="css/home.css" rel="stylesheet">
	</head>
	<body>
		<div class="Bgimg">
		<!-----------------------------------------------header starts------------------------------------------>
		<div id="Goal" style="z-index:100;background: rgb(236,245,253); width:99%;height:50px;;border-bottom: 1px solid #009200;position:absolute;">
			<a href=""><img data-u="image" src="Image/goal.jpg" style="width:25%;height:100%;"/></a>
		</div>
		<!---------------------------------------header ends----------------------------------------------------->
		<!---------------------------------------left panel starts---------------------------------------------->
		<div id="left1" style="z-index:100; width:22%;height:200px;border:1px solid #000000;position:relative;top:55px; margin-left:5px;">
			<div id="l1" style="z-index:100;width:100%;height:30px;position:absolute;background:rgb(239,238,236);"></div>
		</div>
		<div id="left2" style="z-index:100; width:22%;height:300px;border:1px solid #000000;position:absolute;top:260px;margin-left:5px;">
			<div id="l1" style="z-index:100;width:100%;height:30px;position:absolute;background:rgb(239,238,236);"></div>	
		</div>
		<div id="left3" style="z-index:100; width:22%;height:193px;border:1px solid #000000;position:absolute;top:565px;margin-left:5px;">
			<div id="l1" style="z-index:100;width:100%;height:30px;position:absolute;background:rgb(239,238,236);">
				<div id="min"><input type="image" src="Image/minimize.png" alt="minimize" align="right"></div>
			</div>
		</div>
		<!----------------------------------left panel ends----------------------------------------------------->
		
		<!--------------------------------------------------below head div starts------------------------------------------------------>
		<div id="home1" style="z-index:100;background: rgb(210,229,249); width:76%;height:30px;border-bottom: 1px solid #009200;position:absolute; top:57px;left:23%;padding-top:5px;">
			&nbsp;&nbsp;<a href=""><img data-u="image" src="Image/home1.png"/>&nbsp;Home</a>
			&nbsp;&nbsp;&nbsp;<a href=""><img data-u="image" src="Image/add_item1.png"/>&nbsp;Add Item</a>&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;<input type="text" placeholder="Search Item" id="text"/>
			<a href=""><input type="image" src="Image/search.ico" alt="Search" width="20" height="15"/></a>
			<t1><a href="">Welcome,Username &nbsp;|</t1></a>
			<t2><a href="">Logout</t2></a>
		</div>
		<!---------------------------------------------------------- below head div ends------------------------------------------------->
		<!-----------------------------------------------------------footer starts-------------------------------------------------------->
		<div id="footer" style="z-index:100; width:99%; height:50px; position:absolute;padding-bottom:5px; top:775px; background:rgba(24,94,135,0.75);padding-left:15px;padding-top:10px;font-family:verdana; ">Goal Store version: 1.0<br>&copy;, 2016, Goal Techno Team
			<div id="imge" align="right" style="margin-right:100px; position:relative;top:-30px;">
								  <a href=""><img src="Image/fb.png" width="40" height="40" alt="Facebook"></a>
							&nbsp;<a href=""><img src="Image/gplus.png"width="40" height="40"alt="Google Plus"></a>
							&nbsp;<a href=""><img src="Image/twt.png"width="40" height="40" alt="Twitter"></a>
							&nbsp;<a href=""><img src="Image/youtube.png"width="40" height="40" alt="Youtube"></a>
			</div>
		</div>
		
		<!-----------------------------------------------------------footer ends------------------------------------------------------------>
<!---------------------------------------------------------------- Table starts------------------------------------------------------------->
<div id="tablediv" style="z-index:100;width:76%;height:81%;position:absolute;top:110px;left:23%;"><div id="hp"><b>Home Page</b></div>
		<div id="table-wrapper">
  <div id="table-scroll">
  <table >
	<tr>
		<th width="150" style="background:rgb(153,204,255);border:2px solid #fff;" align="left">S.No</th>
		<th width="140" style="background:rgb(153,204,255);border:1px solid #fff;" align="left">Item</th>
		<th width="140" style="background:rgb(153,204,255);border:1px solid #fff;" align="left">Rate</th>
		<th width="140" style="background:rgb(153,204,255);border:1px solid #fff;"align="left">Quantity</th>
		<th width="113" style="background:rgb(153,204,255);border:1px solid #fff;"align="left">Offer</th>
		<th width="113" style="background:rgb(153,204,255);border:1px solid #fff;"align="left">Price</th>
	</tr>
  </table>
    <table>
			
				<tbody style="border:2px solid #000;">
                                    <% Store st=(Store) request.getAttribute("searchResult");%> 
                                        <c:forEach var="s" items="${st}"> 
                                         
 
                                   
                                    
                                    <tr> 
                                            <td>${s.getSno()}</td>
                                            <td>${s.getItem()}</td>
                                            <td>${s.getRate()}</td>
                                            <td>${s.getQty()}</td>
                                            <td>${s.getOffer()}</td>
                                            <td>${s.getPrice()}</td>
                                        </tr>
                                         </c:forEach>
				</tbody>
			</table>
                                    
                                    
                                            
		</div>
	</div>
	<div id="xy" align="right" style="margin-right:50px; margin-top:20px;">
	<table id="tab">
		<tr>
			<td><span id="tot">Total &nbsp;</td>
			<td><span id="tot1">&nbsp;0.00</td>
		</tr>
	</table>
</div>
</div>

<!------------------------------------------------------- Table ends---------------------------------------------------------------->

	</div>
	</body>
</html>