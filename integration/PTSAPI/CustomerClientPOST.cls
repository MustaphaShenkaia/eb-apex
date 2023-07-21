public class CustomerClientPOST {
	
    public static String TOKEN = '0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG'; 
    
    // https://api.pathtosalesforce.com/index.php
    // SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r
    // 0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG    
        
    //===============================================
    
    // https://api.pathtosalesforce.com/customer.php&token=0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG    
    // CustomerClientAPI.postCustomer();     
    public static void postCustomer() {
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
        	request.setEndpoint('https://api.pathtosalesforce.com/customer.php?token='+TOKEN);
    		request.setMethod('POST');
        
        	request.setHeader('Content-Type','application/json; charset = UTF-8');
        	// Single Record
        	// request.setBody(' {"firstName": "Huriye1", "lastName": "Sena","email": "huriye1@gmail.com","phone": "5054459681","gender": "Female","status": "active"} ');  
        	// Multiple Record
        	request.setBody(' [{"firstName": "Esra", "lastName": "Demir","email": "esra@example.com","phone": "5054459681","gender": "Female","status": "active"}, {"firstName": "Meral", "lastName": "Sena","email": "meral@example.com","phone": "5054459696","gender": "Female","status": "active"}] ');  

        /*
            {
              "firstName": "John",
              "lastName": "Doe",
              "email": "johndoe@example.com",
              "phone": "1234567890",
              "gender": "male",
              "status": "active"
            }
        */    
        HttpResponse response = http.send(request); 
        
            System.debug(response.getStatusCode());
        	system.debug(response.getStatus());
            System.debug(response.getBody());
    }
    
    
}