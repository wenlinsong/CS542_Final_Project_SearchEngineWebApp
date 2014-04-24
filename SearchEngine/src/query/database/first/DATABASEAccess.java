package query.database.first;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DATABASEAccess{
	private Connection connect = null;
	private Statement statement = null;
	private PreparedStatement prepareStatement = null;
	private ResultSet resultSet = null;
	String temp_area = new String();
	String temp_toSomewhere = new String();
	int temp_star;
	float temp_price;
	
	
	//constructor
	public DATABASEAccess(String input_area, int input_star, float input_price, String input_toSomewhere){
		temp_area = input_area;
		temp_toSomewhere = input_toSomewhere;
		temp_star = input_star;
		temp_price = input_price;
	}
	
	public ArrayList<String> readDataBase(){
		ArrayList<String> web_result = new ArrayList<String>();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager
					.getConnection("jdbc:mysql://localhost/hotels"
							,"root","");
			statement = connect.createStatement();
			
			if(temp_toSomewhere.compareTo("toFifthAve") == 0)
			{
				prepareStatement = connect
		          .prepareStatement("SELECT name FROM (SELECT * FROM hotels.hotel_newyork NATURAL JOIN hotels.hotel_price NATURAL JOIN hotels.hotel_review NATURAL JOIN hotels.hotel_distance) AS T1 WHERE T1.star >=? AND T1.price<=? AND NOT EXISTS (SELECT name FROM ( SELECT * FROM hotels.hotel_newyork NATURAL JOIN hotels.hotel_price NATURAL JOIN hotels.hotel_review NATURAL JOIN hotels.hotel_distance ) AS T2 WHERE T2.star >=? AND T2.price<=? AND T2.price <= T1.price AND T2.toFifthAve <= T1.toFifthAve AND ( T2.price < T1.price OR T2.toFifthAve < T1.toFifthAve));"); 
				prepareStatement.setInt(1,temp_star);
				prepareStatement.setInt(2,(int)temp_price);
				prepareStatement.setInt(3,temp_star);
				prepareStatement.setInt(4,(int)temp_price);
				resultSet = prepareStatement.executeQuery();
				web_result.clear();
				web_result.addAll(writeResultSet(resultSet));
			}
			if(temp_toSomewhere.compareTo("toMuseum") == 0)
			{
				prepareStatement = connect
				          .prepareStatement("SELECT name FROM (SELECT * FROM hotels.hotel_newyork NATURAL JOIN hotels.hotel_price NATURAL JOIN hotels.hotel_review NATURAL JOIN hotels.hotel_distance) AS T1 WHERE T1.star >=? AND T1.price<=? AND NOT EXISTS (SELECT name FROM ( SELECT * FROM hotels.hotel_newyork NATURAL JOIN hotels.hotel_price NATURAL JOIN hotels.hotel_review NATURAL JOIN hotels.hotel_distance ) AS T2 WHERE T2.star >=? AND T2.price<=? AND T2.price <= T1.price AND T2.toMuseum <= T1.toMuseum AND ( T2.price < T1.price OR T2.toMuseum < T1.toMuseum));"); 
				prepareStatement.setInt(1,temp_star);
				prepareStatement.setInt(2,(int)temp_price);
				prepareStatement.setInt(3,temp_star);
				prepareStatement.setInt(4,(int)temp_price);
				resultSet = prepareStatement.executeQuery();
				web_result.clear();
				web_result.addAll(writeResultSet(resultSet));
			}
			if(temp_toSomewhere.compareTo("toFerry") == 0)
			{
				prepareStatement = connect
				          .prepareStatement("SELECT name FROM (SELECT * FROM hotels.hotel_newyork NATURAL JOIN hotels.hotel_price NATURAL JOIN hotels.hotel_review NATURAL JOIN hotels.hotel_distance) AS T1 WHERE T1.star >=? AND T1.price<=? AND NOT EXISTS (SELECT name FROM ( SELECT * FROM hotels.hotel_newyork NATURAL JOIN hotels.hotel_price NATURAL JOIN hotels.hotel_review NATURAL JOIN hotels.hotel_distance ) AS T2 WHERE T2.star >=? AND T2.price<=? AND T2.price <= T1.price AND T2.toFerry <= T1.toFerry AND ( T2.price < T1.price OR T2.toFerry < T1.toFerry));"); 
				prepareStatement.setInt(1,temp_star);
				prepareStatement.setInt(2,(int)temp_price);
				prepareStatement.setInt(3,temp_star);
				prepareStatement.setInt(4,(int)temp_price);
				resultSet = prepareStatement.executeQuery();
				web_result.clear();
				web_result.addAll(writeResultSet(resultSet));
			}
		   
		      resultSet = statement
		      .executeQuery("select * from hotels.hotel_newyork");
		      writeMetaData(resultSet);
		      
		    } catch (Exception e) {
		     //throw e;
		  
		    } finally {
		     // close();
		    }
			return web_result;
		}
	private void writeMetaData(ResultSet resultSet) throws SQLException {
	    // now get some metadata from the database
	    System.out.println("The columns in the table are: ");
	    System.out.println("Table: " + resultSet.getMetaData().getTableName(1));
	    for  (int i = 1; i<= resultSet.getMetaData().getColumnCount(); i++){
	      System.out.println("Column " +i  + " "+ resultSet.getMetaData().getColumnName(i));
	    }
	  }

	  private ArrayList<String> writeResultSet(ResultSet resultSet) throws SQLException {
	    // resultSet is initialised before the first data set
	    ArrayList<String> inter_result = new ArrayList<String>();
		  while (resultSet.next()) {
	      // it is possible to get the columns via name
	      // also possible to get the columns via the column number
	      // which starts at 1
	      // e.g., resultSet.getSTring(2);
	      String hotel_name = resultSet.getString("name");
	      inter_result.add(hotel_name);
	      //String hotel_area = resultSet.getString("area");
	      System.out.println("Name: " + hotel_name);
	      //System.out.println("Area: " + hotel_area);

	    }
	    return inter_result; 
	  }
	  
	 
	
	}