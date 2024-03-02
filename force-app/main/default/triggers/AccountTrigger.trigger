trigger AccountTrigger on Account(before insert) {
if(trigger.isInsert){
    if(trigger.isBefore){
        AccountTriggerHandler.updateRating(trigger.new);
        System.debug('Code deployed with empty method impl');
    }

}
}