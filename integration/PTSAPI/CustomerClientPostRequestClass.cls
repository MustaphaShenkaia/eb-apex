public class CustomerClientPostRequestClass {
	
    public static FINAL String TOKEN = '0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG'; 
    
    // https://api.pathtosalesforce.com/index.php
    // SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r
    // 0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG           
     
    // CustomerClientPostRequestClass.postCustomerSingle();     
    public static void postCustomerSingle() {
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
        
        	request.setEndpoint('https://api.pathtosalesforce.com/customer.php?token='+TOKEN);
    		request.setMethod('POST');
        
        	request.setHeader('Content-Type','application/json; charset = UTF-8');
 			
        	CustomerClient customer = new CustomerClient(); 
        		customer.firstName = 'Lother';
        		customer.lastName = 'Mateus'; 
                customer.email = 'mateus@example.com'; 
                customer.gender = 'Male'; 
                customer.phone = '5559698574'; 
                customer.status = 'active';   
        	
        	request.setBody(JSON.serialize(customer));  
        
         HttpResponse response = http.send(request); 
        
        	System.debug(response.getStatusCode());
        	system.debug(response.getStatus());
            System.debug(response.getBody());
    }

	
    //=====================================================
    
    
    // CustomerClientPostRequestClass.postCustomerMultiple();     
    public static void postCustomerMultiple() {
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
        
        	request.setEndpoint('https://api.pathtosalesforce.com/customer.php?token='+TOKEN);
    		request.setMethod('POST');
        
        	request.setHeader('Content-Type','application/json; charset = UTF-8');
 			
        
        	List<CustomerClient> customerList = new List<CustomerClient>(); 
        
        	CustomerClient customer1 = new CustomerClient(); 
        		customer1.firstName = 'Aden';
        		customer1.lastName = 'Hazar'; 
                customer1.email = 'aden@example.com'; 
                customer1.gender = 'Male'; 
                customer1.phone = '5559698574'; 
                customer1.status = 'active';   
        
        		customerList.add(customer1); 
        
        	CustomerClient customer2 = new CustomerClient(); 
        		customer2.firstName = 'Luis';
        		customer2.lastName = 'Figo'; 
                customer2.email = 'figo@example.com'; 
                customer2.gender = 'Male'; 
                customer2.phone = '5559698574'; 
                customer2.status = 'active';
        
        		customerList.add(customer2); 
        	
        	request.setBody(JSON.serialize(customerList));  
        
         HttpResponse response = http.send(request); 
        
        	System.debug(response.getStatusCode());
        	system.debug(response.getStatus());
            System.debug(response.getBody());
    }

}