package com.axa.cps.reader;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.axa.cps.servlets.SurveyAppServlet;

public class ExcelReader {
	
	private final static HashMap<String, String> emailMap = new HashMap<String, String>();
	
	//excel info delimited by ,'s
	private static String excelInfo = "";
	
	
	    public static void main(String[] args) 
	    {
	        try
	        {
	            FileInputStream file = new FileInputStream(new File("./excel/test.xlsx"));
	 
	            //Create Workbook instance holding reference to .xlsx file
	            XSSFWorkbook workbook = new XSSFWorkbook(file);
	 
	            //Get first/desired sheet from the workbook
	            XSSFSheet sheet = workbook.getSheetAt(0);
	 
	            //Iterate through each rows one by one
	            Iterator<Row> rowIterator = sheet.iterator();
	            
	            
                
	            while (rowIterator.hasNext()) 
	            {
	                Row row = rowIterator.next();
	                //For each row, iterate through all the columns
	                Iterator<Cell> cellIterator = row.cellIterator();
	                
	                while (cellIterator.hasNext()) 
	                {
	                    Cell cell = cellIterator.next();
	                    excelInfo+=cell.getStringCellValue()+",";
	                    
	                }
	               
	               // System.out.println("");
	            }
	            file.close();
	            System.out.println(excelInfo);
	            // Seperator is specified here, to split string on this basis
	                   
		             
	            // Here the each part is futher splitted taking in account the equal sign '='  which demarcates the key
	            // and valuefor the hashmap        
	            String[] pairs = excelInfo.split(",");    
	             
	            // Those key and values are then put into hashmap     
	            //emailMap.put(pairs[0], pairs.length == 1 ? "" : pairs[1]);
	            for(int i=0; i<pairs.length; i=i+2){
	            	emailMap.put(pairs[i+1],pairs[i]);	
	            }
	            ArrayList<String> emailList = new ArrayList<String>();
	            for(Entry<String, String> e : emailMap.entrySet()) {
	                String key = e.getKey();
	                String value = e.getValue();
	                if(value.equals("developer"))emailList.add(key);
	            }
	            System.out.println(emailList);
	            
		            
	            
	        
	        }
	        catch (Exception e) 
	        {
	            e.printStackTrace();
	        }
	    }
	}