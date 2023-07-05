public class BatchApexStateful implements Database.Batchable<sObject>, Database.Stateful {
	
    public Integer recordsProccessed = 0; 
    
    
    public Database.QueryLocator start(Database.BatchableContext BC){
        
        return Database.getQueryLocator('SELECT Id, Rating FROM Account');
    }
    
    
    public void execute(Database.BatchableContext BC, List<Account> acList){
        
        for(Account ac : acList){
            
            ac.Rating = 'Cold';
            
            recordsProccessed +=1;
        }
        
        update acList;
    }
    
    
    public void finish(Database.BatchableContext BC){
        
        System.debug(recordsProccessed + ' Accounts has been updated'); 
        // 26 Accounts has been updated
    }
}

/*
 	BatchApexStateful objA = new BatchApexStateful();
	Database.executeBatch(objA,10);
 */