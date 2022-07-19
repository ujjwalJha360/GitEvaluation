trigger AccountTrigger_for_GIT on Account (before insert) {

    
    if(trigger.isbefore && trigger.isInsert)
    {
        AccountTrigger_for_GIT_handler.PopulateShippingAddress(trigger.new);
    }
    
}