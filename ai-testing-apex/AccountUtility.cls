public class AccountUtility {
	
    public static void create100Accounts() {
        
        List<Account> accList = new List<Account>(); 
        
        for(Integer i=0; i<100; i++ ) {
            Account acc = new Account(); 
            acc.Name = 'Account ' + i; 
            
            accList.add(acc); 
        }       
        
       insert accList; 
    }
}
