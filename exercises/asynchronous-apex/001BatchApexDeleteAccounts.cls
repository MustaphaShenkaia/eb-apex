public class BatchApexDeleteAccounts implements Database.Batchable<Sobject> {
	
    public final String query;
    
    public BatchApexDeleteAccounts(String query) {
        this.query = query; 
    }
    //--------------------------------------------------
    public Database.QueryLocator start(Database.BatchableContext bc) {
        
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc, List<Sobject> scope) {
        
        Database.delete(scope,false);
        Database.emptyRecyclebin(scope);
    }
    
    public void finish(Database.BatchableContext bc) {
    } 
    
}

/*
String query = 'SELECT Id FROM Account WHERE Name LIKE \'AAA%\' ';
[SELECT Id FROM Account WHERE Name LIKE 'AAA%']
BatchApexDeleteAccounts objA = new BatchApexDeleteAccounts(query);
Database.executeBatch(objA,10);
*/

