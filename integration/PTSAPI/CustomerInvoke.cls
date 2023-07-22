public class CustomerInvoke {
	
    // salesforce invocable method annotation
    // Class içinde tek invoke method kullanılır
    // Flow ile çalışma sağlar
    
    // Flow -> Screen Flow -> New Action
    // Object Manager -> Button, Links and Actions -> New Button or Link
    // Object Manager -> List View Button Layout -> Import Customers
    
    @InvocableMethod(label='Get Customers')
    public static void callApi() {
        CustomerClientGetResponseSaveSF.getCustomersAndSave(); 
    }
}

