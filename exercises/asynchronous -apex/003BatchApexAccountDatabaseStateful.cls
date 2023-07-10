public class BatchApexAccountDatabaseStateful implements Database.Batchable<Sobject>, Database.Stateful {

    public Decimal AR = 0;
    
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
        String query = 'SELECT Id FROM Account';
        return Database.getQueryLocator(query);
  	}
    
    public void execute(Database.BatchableContext bc, List<SObject> scope) {
        for(sobject s :scope) {
          AR+=1; // AR = AR + 1;  // AR++;               
        }
  	}
    
    public void finish(Database.BatchableContext bc) {
        
        Account ac = new Account(Name='Batch Apex Stateful');
        ac.AnnualRevenue = AR;
        insert ac;
  	}
}
/*
BatchApexAccountDatabaseStateful objA = new BatchApexAccountDatabaseStateful();
Database.executeBatch(objA,10);
*/
