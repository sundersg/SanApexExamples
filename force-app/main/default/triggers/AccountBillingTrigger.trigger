trigger AccountBillingTrigger on Account (before insert) {
if(trigger.isInsert){
    if(trigger.isBefore){
        AccountBillingTriggerHandler.copyBillingToShipping(trigger.new);
        System.debug('Code deployed with dependent handler class impl');
    }
}
}