public class CustomerClientPUT {
	
    public static FINAL String TOKEN = '0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG'; 
    
    // https://api.pathtosalesforce.com/index.php
    // SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r
    // 0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG    
        
    
    //===============================================
    
    
    // https://api.pathtosalesforce.com/customer.php&token=0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG    
    // CustomerClientPUT.putCustomer();     
    public static void putCustomer(){
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
        
        	request.setEndpoint('https://api.pathtosalesforce.com/customer.php?token='+TOKEN);
    		request.setMethod('PUT');
        
        	request.setHeader('Content-Type','application/json; charset = UTF-8');
        	// Single Record
        	request.setBody(' {"id": "64", "firstName": "Ebrar", "lastName": "Marin","email": "ebrar@example.com","phone": "5054459693","gender": "Female","status": "active"} ');  
        	// Multiple Record
        	// request.setBody(' [{"firstName": "Esra", "lastName": "Demir","email": "esra@example.com","phone": "5054459681","gender": "Female","status": "active"}, {"firstName": "Meral", "lastName": "Sena","email": "meral@example.com","phone": "5054459696","gender": "Female","status": "active"}] ');  

        /*
            {
               "id": "12",
               "firstName": "Emily",
                "lastName": "Johnson",
                "email": "emilyjohnson@gmail.com",
                "phone": "(555) 987-6543",
                "gender": "Female",
                "status": "active"
              }
        */    
        HttpResponse response = http.send(request); 
        
            System.debug(response.getStatusCode());
        	system.debug(response.getStatus());
            System.debug(response.getBody());
  
    }
    
    
    //===============================================
   
    
    // CustomerClientPUT.putCustomerById('63');     
    public static void putCustomerById(String customerId){
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
        
        	request.setEndpoint('https://api.pathtosalesforce.com/customer.php?token='+TOKEN);
    		request.setMethod('PUT');
        
        	request.setHeader('Content-Type','application/json; charset = UTF-8');
        	// Single Record
        	request.setBody(' {"id": " '+customerId+' ", "firstName": "Nazan", "lastName": "Kar","email": "nazan@example.com","phone": "5054459692","gender": "Female","status": "active"} ');  
        	// Multiple Record
        	// request.setBody(' [{"firstName": "Esra", "lastName": "Demir","email": "esra@example.com","phone": "5054459681","gender": "Female","status": "active"}, {"firstName": "Meral", "lastName": "Sena","email": "meral@example.com","phone": "5054459696","gender": "Female","status": "active"}] ');  

        /*
            {
               "id": "12",
               "firstName": "Emily",
                "lastName": "Johnson",
                "email": "emilyjohnson@gmail.com",
                "phone": "(555) 987-6543",
                "gender": "Female",
                "status": "active"
              }
        */    
        HttpResponse response = http.send(request); 
        
            System.debug(response.getStatusCode());
        	system.debug(response.getStatus());
            System.debug(response.getBody());
  
    }
    
}