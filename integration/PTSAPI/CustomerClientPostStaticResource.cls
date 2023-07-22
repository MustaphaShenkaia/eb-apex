public class CustomerClientPostStaticResource {
	
    public static FINAL String TOKEN = '0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG'; 
    
    // https://api.pathtosalesforce.com/index.php
    // SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r
    // 0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG           
     
    // CustomerClientPostStaticResource.postCustomerData();     
    public static void postCustomerData() {
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
        	request.setEndpoint('https://api.pathtosalesforce.com/customer.php?token='+TOKEN);
    		request.setMethod('POST');
        
        	request.setHeader('Content-Type','application/json; charset = UTF-8');
 			
        	StaticResource sr = [SELECT id, body FROM StaticResource WHERE Name = 'Customers']; 
        	String payload = sr.body.toString(); 
        	request.setBody(payload);  
        
        
         HttpResponse response = http.send(request); 
        
        
            System.debug(response.getStatusCode());
        	system.debug(response.getStatus());
            System.debug(response.getBody());

    }
}