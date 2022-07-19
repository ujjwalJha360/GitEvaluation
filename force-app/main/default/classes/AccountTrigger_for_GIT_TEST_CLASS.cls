@isTest
public  class AccountTrigger_for_GIT_TEST_CLASS {
    @isTest
    public static void AccountTrigger_for_GIT_TEST_CLASS() {

        list<Account> accountList=new List<Account>();
        For ( integer i=0 ; i <5 ; i++)
        {
            Account acc= new Account();
            acc.name='test'+i;
            acc.BillingCity='city'+i;
            acc.BillingCountry='country'+i;
            acc.BillingPostalCode='678764'+i;
            acc.BillingState='billing state'+i;
            acc.BillingStreet='billingstreet'+i;
            accountList.add(acc);
        }
        Test.startTest();
        insert accountList;
        Test.stopTest();
        list<account> accresult = [select id, BillingCity,ShippingCity,BillingCountry,ShippingCountry,BillingPostalCode,ShippingPostalCode,BillingState,ShippingState,BillingStreet,ShippingStreet from Account];
        for ( account acc :accresult){

            system.assertEquals(acc.BillingCity, acc.ShippingCity);
            system.assertEquals(acc.BillingCountry, acc.ShippingCountry);
            system.assertEquals(acc.BillingPostalCode, acc.ShippingPostalCode);
            system.assertEquals(acc.BillingState, acc.ShippingState);
            system.assertEquals(acc.BillingStreet, acc.ShippingStreet);
            
        }



    }
}
    
