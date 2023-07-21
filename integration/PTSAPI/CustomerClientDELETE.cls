public class CustomerClientDELETE {
	
    public static String TOKEN = '0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG'; 
    
    // https://api.pathtosalesforce.com/index.php
    // SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r
    // 0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG    
        
    //===============================================
       
    // CustomerClientDELETE.deleteCustomer();     
    public static void deleteCustomer() {
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest(); 
        	request.setMethod('DELETE');
        	request.setEndpoint('https://api.pathtosalesforce.com/customer.php?id=65&token=' + TOKEN);
        
        HttpResponse response = http.send(request); 
        
        System.debug(response.getStatus());
        System.debug(response.getStatusCode());
        System.debug(response.getBody());
    }
}