public class BatchApexClass implements Database.Batchable<sObject> {
	
    public Database.QueryLocator start(Database.BatchableContext bc) {

        return Database.getQueryLocator('SELECT Id, Name FROM Account'); 
    }
        
    public void execute(Database.BatchableContext bc, List<Account> accList) {
        
        for(Account acc : accList) {
            acc.Rating = 'Cold'; 
        }
        update accList; 
    }
    
    public void finish(Database.BatchableContext bc) {      
        // Actions
    }
}