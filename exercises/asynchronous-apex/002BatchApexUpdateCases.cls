public class BatchApexUpdateCases implements Database.Batchable<SObject> {
	
    public final String query;
    
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(query);
    }
    
    
    public void execute(Database.BatchableContext bc, List<Case> scope) {
        
        for(Case cs : scope){
            
            if(cs.Status=='New'){
                cs.Priority='High';
            }
        }
        update scope;
    }
    
    
    public void finish(Database.BatchableContext bc) {
        
        AsyncApexJob job = [SELECT Id, Status, NumberOfErrors, JobItemsProcessed, TotalJobItems, CreatedBy.Email 
                            From AsyncApexJob where Id = :bc.getJobId()];
        
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        
        //List<String> toAddress = new List<String>{ 'senkaya20@gmail.com', 'ozgurdestina@gmail.com' }; 
        String[] toAddress = new String[]{job.CreatedBy.Email};
        mail.setToAddresses(toAddress);
        
        mail.setSubject('Apex job Status' + job.Status);
        
        mail.setPlainTextBody('The apex job processed ' + 
                              job.TotalJobItems + ' Batches with ' + 
                              job.NumberOfErrors + ' failures');
        
        
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail});
     
    }
}
/*
BatchApexUpdateCases objA = new BatchApexUpdateCases();
objA.query = 'SELECT Id, Status,Priority FROM Case';
Database.executeBatch(objA,50);
*/