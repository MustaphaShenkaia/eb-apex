public class BatchApex implements Database.Batchable<sObject> {
	
    public Database.QueryLocator start(Database.BatchableContext BC){        
        
        String query = 'SELECT Id, Name from Account';
        return Database.getQueryLocator(query);
    } 
    
    public void execute(Database.BatchableContext BC, List<Account> acList){
        
        for (Account ac : acList){            
            ac.Website='www.salesforce.com';
        }    
        update acList;
    }
    
    public void finish (Database.BatchableContext BC){ 
        System.debug('Process is completed');
    }
}
/*
 	BatchApex obj = new BatchApex();
	Database.executeBatch(obj);
	// Database.executeBatch(obj, 100);
 */

// Setup -> Apex Jobs




