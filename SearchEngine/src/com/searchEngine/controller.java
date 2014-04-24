package com.searchEngine;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;

import query.database.first.DATABASEAccess;
/**
 * Servlet implementation class controller
 */
public class controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<String> resultDatabase = new ArrayList<String>();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String starRate = request.getParameter("starRate");
		String priceLB  = request.getParameter("priceLB");
		String priceHB  = request.getParameter("priceHB");
		String nearplace = request.getParameter("nearbyplace");
		
  		int star = Integer.parseInt(starRate);
  		int price_high = Integer.parseInt(priceHB);
  		String area = "Time Square";
  		String toSomewhere = "toFerry";
		// connection with database
  		DATABASEAccess dao = new DATABASEAccess(area, star, price_high, nearplace);
  		//DATABASEAccess dao = new DATABASEAccess(area, 3, price_high, nearplace);
  		//DATABASEAccess dao = new DATABASEAccess(area, 3, 300, toSomewhere);
  		resultDatabase.clear();
  		resultDatabase.addAll(dao.readDataBase());
  		
  		
  		//set request
  		int size = resultDatabase.size();
  	  String myString[] = new String[size];
  	  String navString[] = new String[size];
  		
  	  
  	  // populate
  	  
  	  HttpSession session = request.getSession();
  	  
  	  for(int i=0; i<size; i++)
  	  {
  	  myString[i] = resultDatabase.get(i);
  	  switch(myString[i]){
  	  	case "Hilton": navString[i] = "hilton"; break;
  	  	case "Marriott": navString[i] = "marriott";break;
  	  	case "Inn": navString[i] = "inn";break;
  	  	case "Empire": navString[i] = "empire";break;
  	  	case "Westin": navString[i] = "westin";break;
  	  	case "Union": navString[i] = "union";break;
  	  	case "Hudson": navString[i] = "hudson";break;
  	  	case "Countyard": navString[i] = "countyard";break;
  	  	case "Four Seasons": navString[i] = "fourseasons";break;
  	  	case "Sheraton": navString[i] = "sheraton";break;
  	  	case "Mayfair": navString[i] = "mayfair";break;
  	  	case "Riverside": navString[i] = "riverside";break;
  	  	case "Conrad": navString[i] = "conrad";break;
  	  	case "Intercontinental": navString[i] = "intercontinental";break;
  	  	case "Four Points": navString[i] = "fourpoints"; break;
  	  }
  	  }
  	  
  	  session.setAttribute("myArray", myString);
  	  session.setAttribute("myNav", navString);
  		
  		
  		
  		request.setAttribute("hotelName[1]", "Hilton");
  		request.setAttribute("hotelName[0]", "fuck");
  		request.setAttribute("hotelImage", "images/kimpton.jpg");
  		request.setAttribute("starRateImage", "images/star4.png");
  		request.setAttribute("location", "New York, NY (Soho - Tribeca)");
  		request.setAttribute("hotelDisc", "Walk to the West Village & NYU, convenient to Greenwich Village, Little Italy & Chinatown. Onsite dining at Table 181. Free WiFi.");
  		request.setAttribute("pricetag", 499);
  		//forward to result page
  		String forward = "/result.jsp";
  		RequestDispatcher view = request.getRequestDispatcher(forward);
  		view.forward(request, response);
  		
  		
  		
		//
  		//out.println("Get request from user\n");
  		//out.println("Star Rate: "+ starRate +"  Price from "+priceLB+" to "+priceHB);
  		//for(int i=0; i<resultDatabase.size(); i++)
  		//{
  			//request.setAttribute(priceHB, 220);
  			//out.println(resultDatabase.get(i));
  		//}
  		
  		//out.println(resultDatabase);
//		out.println("connetion succeed");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
