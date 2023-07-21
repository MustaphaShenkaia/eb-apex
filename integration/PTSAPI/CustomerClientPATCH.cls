public class CustomerClientPATCH {
	
    public static FINAL String TOKEN = '0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG'; 
    
    // https://api.pathtosalesforce.com/index.php
    // SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r
    // 0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG    
        
    
    //===============================================
    
    
    // https://api.pathtosalesforce.com/customer.php&token=0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG    
    // CustomerClientPATCH.patchCustomer();     
    public static void patchCustomer(){
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
        
        	request.setEndpoint('https://api.pathtosalesforce.com/customer.php?token='+TOKEN);
    		request.setMethod('PATCH');
        
        	request.setHeader('Content-Type','application/json; charset = UTF-8');
        	// Single Record ID var Update
        	// request.setBody(' {"id": "64", "firstName": "Ebrar2", "lastName": "Marin","email": "ebrar@example.com","phone": "5054459693","gender": "Female","status": "active"} ');  
            // Single Record ID yok Upsert
        	request.setBody(' {"id": "66", "firstName": "Fatmaa", "lastName": "Marin","email": "fatmaak0@example.com","phone": "5054459693","gender": "Female","status": "active"} ');  
        	
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
   
    
    // CustomerClientPATCH.patchCustomerById('63');     
    public static void patchCustomerById(String customerId){
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
        
        	request.setEndpoint('https://api.pathtosalesforce.com/customer.php?token='+TOKEN);
    		request.setMethod('PATCH');
        
        	request.setHeader('Content-Type','application/json; charset = UTF-8');
        	// Single Record
        	request.setBody(' {"id": " '+customerId+' ", "firstName": "Zehra2", "lastName": "Sam","email": "zehraa@example.com","phone": "5054459692","gender": "Female","status": "active"} ');  
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