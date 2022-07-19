public with sharing class AccountTrigger_for_GIT_handler {
    public static void  PopulateShippingAddress(list<Account> acclist) {

        list<account> acctoProcess = new list<account>();
        for(account acc:acclist){
            if(!(string.isEmpty(acc.BillingCity)||string.isEmpty(acc.BillingCountry)||string.isEmpty(acc.BillingPostalCode)||string.isEmpty(acc.BillingState)||string.isEmpty(acc.BillingStreet)))
            {
                acctoProcess.add(acc);
            }
        }

        if(acctoProcess.size()==0)
            return;

        else{

            for (Account acc : acctoProcess) {
               
               acc.ShippingCity=acc.BillingCity;
               acc.ShippingCountry=acc.BillingCountry;
               acc.ShippingPostalCode=acc.BillingPostalCode;
               acc.ShippingState=acc.BillingState;
               acc.ShippingStreet=acc.BillingStreet;
            }
        }
        
        
    }
}
