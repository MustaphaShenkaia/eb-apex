public class CustomerResponse {
	
	public string firstName; 
    public string lastName; 
    public string email; 
    public string phone; 
    public string gender; 
    public string status;   
    
    public static List<CustomerResponse> parse(String jsonString) {
        
        List<CustomerResponse> customers = (List<CustomerResponse>) JSON.deserialize(jsonString, List<CustomerResponse>.class);
        
        return customers; 
    }
}