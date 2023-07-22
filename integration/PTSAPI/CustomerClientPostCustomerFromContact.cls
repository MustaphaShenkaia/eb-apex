public class CustomerClientPostCustomerFromContact {
	
    public static FINAL String TOKEN = '0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG'; 
    
    // https://api.pathtosalesforce.com/index.php
    // SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r
    // 0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG           
     
    // CustomerClientPostCustomerFromContact.postCustomers();     
    public static void postCustomers() {
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
        
        	request.setEndpoint('https://api.pathtosalesforce.com/customer.php?token='+TOKEN);
    		request.setMethod('POST');
        
        	request.setHeader('Content-Type','application/json; charset = UTF-8');
 			
       		// SF Object -> Container -> JSON Object
       		
        	// SF Object
        	List<Contact> contactList = [SELECT Id, FirstName, LastName, Phone, Email FROM Contact];
        	
        	List<CustomerClient> customerList = new List<CustomerClient>(); 
        
            for(Contact con : contactList) {
                
                // Container
                CustomerClient customer = new CustomerClient(); 
                
                customer.firstName = con.FirstName; 
        		customer.lastName = con.LastName;  
                customer.email = con.Email; 
                //customer.gender = 'Male'; 
                customer.phone = con.Phone;
                //customer.status = 'active';   
                
                customerList.add(customer); 
            }       		
        	
    	    // JSON Object
        	request.setBody(JSON.serialize(customerList));  
        
        
         HttpResponse response = http.send(request); 
        
        	System.debug(response.getStatusCode());
        	system.debug(response.getStatus());
            System.debug(response.getBody());
    }
}