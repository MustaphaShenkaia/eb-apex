@IsTest
public class AccountUtilityTest {
	
    @IsTest
    public static void create100Accounts(){
        
        test.startTest(); 
        
        AccountUtility.create100Accounts(); 
        List<Account> accList = [SELECT Id FROM Account]; 
        //System.assertEquals(100, accList.size()); 
        System.debug(accList);
        
        test.stopTest(); 
    }
}
