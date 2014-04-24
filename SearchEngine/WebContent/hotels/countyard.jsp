<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Countyard at Soho</title>
<link href="realstyle.css" rel="stylesheet" type="text/css">

</head>
<body>

	<header>
		<nav>
			
			<!-- <h1> <img alt="" src="images/iny.jpg" width = 10% style = "padding:30px 0 0 0;">New York Hotels <br style="line-height:5px"></h1> -->
			
			<h1>
				<table>
					<tr>
						<td>
							<img alt="" src="images/iny.jpg" width = 60% style = "padding:0; margin:0;">
						</td>
						
						<td style="margin:0px; padding:0;">
							New York Hotels
						</td>
						
					</tr>
				</table>
				
			</h1>
			
			
			
			<ul>
				<li><a href="#">Home    </a></li>
				<li><a href="#">Things to do    </a></li>
				<li><a href="#">Rewards    </a></li>
				<li><a href="#">Deals    </a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Contact </a></li>
			</ul>
		
		
		
		</nav>
	</header>


<div class="bodyimage">
	<div class="secondLayer">
		
		<form action="controller" id = "form" style="margin:0; padding:0 ">
		
		
		<table >
		
		<!-- Star Rate -->
			<tr >
				<td class="w">Hotel Star Rate</td>
				
			</tr>
			
			
			
			<tr >
				<td class="w">
				<br style="line-height:5px">
				<select  class="slt" name="starRate" >
					<option class="opt" value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                   
				</select>
				</td>
			</tr>
			
			
		<!-- Price Rage -->
			<tr>
				<td>
					<table>
						<tr >
							<td class="w"><br style="line-height:15px">Price Range</td>
						</tr>
						<tr >
							<td class="w">
								<br style="line-height:5px">
								<select  class="slt" name="priceLB" >
									<option value="500">500</option>
	                    			<option value="400">400</option>
	                    			<option value="300">300</option>
	                    			<option value="200">200</option>
	                    			<option value="100">100</option>
	                   
								</select>
							</td>
						</tr>
					</table>
				</td>
				
				<td>
					<table>
						<tr >
							<td class="w"><br style="line-height:15px">to</td>
						</tr>
						<tr >
							<td class="w">
								<br style="line-height:5px">
								<select  class="slt" name="priceHB" >
									<option value="500">500</option>
	                    			<option value="400">400</option>
	                    			<option value="300">300</option>
	                    			<option value="200">200</option>
	                    			<option value="100">100</option>
	                   
								</select>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			
			
		<!-- Nearby -->
			<tr >
				<td class="w"><br style="line-height:15px">Nearby</td>
			</tr>
			<tr >
				<td class="w">
				<br style="line-height:5px">
				<select  class="slt" name="nearbyplace" >
	            	<option value="toFifthAve">Fifth Avenue</option>
	            	<option value="toMuseum">Metropolitan Museum</option>
	                <option value="toFerry">Ferry</option>
	                <option value="toWallSt">Wall Street</option>
	                <option value="toEmpire">Empire State Building</option>
                   
				</select>
				</td>
			</tr>
			
		

				
		</table>
		<br style="line-height:10px">
		<input type="submit"  value="Search"  style="margin:10px 5px 5px 2px;">
		
		</form>
		
	</div>
</div>


<br style="line-height:0px">

<div class="resultDIVMaster">


	<div class="resultDIV"  >
	
		<table class="resultTB" style="font-family: arial;">
			<tr class="resultTR">
				<td class="resultPC" style="height:320px; width:480px; background: blue;">
				
					<img alt="" src="images/countyard.jpg" width = 100% style = "padding:0; margin:0;">
				
					
				</td>
				<td class="resultTD" style="width:400px; background: white;">
					
					<table width=100% >
					
						<tr><a class="hotelName" href="#" >Countyard</a></tr>
						<br style="line-height: 15px;">
						<tr><img alt="" src="images/star3.png" height=50px style = "padding:0; margin:0;"></tr>
						<br style="line-height: 25px;">
						<tr>New York, NY(Soho) </tr>
						<br style="line-height: 15px;">
						<tr style="font-size: 15px">Located 1 block from New York's SoHo and Canal Street bargains, this lower Manhattan-area hotel is 3 blocks from Little Italy and 4 blocks from Chinatown's main shopping street. TriBeCa, NoLita, East Village and Greenwich Village are also within easy reach.</tr>
					</table>
					

					
					
					
				</td>
				<td class="resultTD" align="center" style="width:300px; background: white;">
				
			
					<font size=30   style="color:green;">$205</font> 
					/night
					<br style="line-height: 200px;">
					<input  style="float: right;" type="submit" name="book" value="book" />
				</td>

		
			
			
			</tr>
		</table>
	
	
	
	
	</div>
	

</div>






<table>

	
	<tr>
		<td>
		
		
			
		
		</td>

	</tr>
	



</table>


	<footer>©2014 My Site</footer>

</body>
</html>