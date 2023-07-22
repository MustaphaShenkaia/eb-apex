public class CustomerClientGetResponseSaveSF {
	
    public static FINAL String TOKEN = '0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG'; 
        
    // https://api.pathtosalesforce.com/index.php
    // SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r
    // 0uDNDrJRd1WRaQJntcmVN4FcRonktR3pay8sZpk819nMAn1cdVBNyfgVkYIlAkMG    
            
    // Request 	-> SF Object -> Container -> JS Object (SF Client -> Provider)
    // Response	-> JSON Object -> Container -> SF Object (Provider -> SF Client)
    
    // CustomerClientGetResponseSaveSF.getCustomersAndSave();     
    public static void getCustomersAndSave() {
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest(); 
        	request.setMethod('GET');
        	request.setEndpoint('https://api.pathtosalesforce.com/customerList.php?token=' + TOKEN);
        
        HttpResponse response = http.send(request);
        
        // JSON Objects
        String jsonString = response.getBody();
        
        // Container Objects        
        List<CustomerClient> customers = (List<CustomerClient>) JSON.deserialize(jsonString, List<CustomerClient>.class);
        
        List<Contact> contactList = new List<Contact>(); 
        
        for(CustomerClient customer : customers) {
            // customers -> CustomerResponse.parse(jsonString); 
            Contact newCon = new Contact(); 
            
            newCon.FirstName = customer.firstName;
            newCon.LastName = customer.lastName; 
            newCon.Phone = customer.phone;
            newCon.Email = customer.email; 
            
            contactList.add(newCon); 
        }
        
        insert contactList; 
        
        System.debug(response.getStatus());
        System.debug(response.getStatusCode());
        //System.debug(response.getBody());
        //System.debug(customers);
        System.debug(contactList);
    }
    
}