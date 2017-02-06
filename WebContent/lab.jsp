<%@ page language="java" import="java.io.*,java.net.*,org.json.simple.*"
 contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%
StringBuffer json=new StringBuffer();  
String from=request.getParameter("origin");
String to=request.getParameter("des");
try {  
	String url="https://maps.googleapis.com/maps/api/directions/json?origin="
+from+"&destination="
+to+"&key=AIzaSyArqcS_MwgL1kr97ZnMS2nI6Cyu3_Dpx0s";
    URL urlObject = new URL(url);  
    URLConnection uc = urlObject.openConnection();  
    BufferedReader in = new BufferedReader(new InputStreamReader(uc.getInputStream()));  
    String inputLine = null;  
    while ( (inputLine = in.readLine()) != null) {  
        json.append(inputLine);  
    }  
    in.close();  
} catch (MalformedURLException e) {  
    e.printStackTrace();  
} catch (IOException e) {  
    e.printStackTrace();  
}  
 String jsonstring=json.toString();
 out.println(jsonstring);

%>

