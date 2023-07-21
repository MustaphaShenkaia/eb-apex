public class CustomerClientGET {
	
    public static String TOKEN = '0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG'; 
    
    // https://api.pathtosalesforce.com/index.php
    // SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r
    // 0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG    
        
    
    //===============================================
    
    
     // CustomerClientAPI.getCustomers();     
    public static void getCustomers() {
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest(); 
        	request.setMethod('GET');
        	request.setEndpoint('https://api.pathtosalesforce.com/customerList.php?token=' + TOKEN);
        
        HttpResponse response = http.send(request); 
        
        if(response.getStatusCode() == 200) {
            System.debug(response.getBody());
            
        } else {
            System.debug(response.getStatus());
            System.debug(response.getStatusCode());
        }
    }
    
}