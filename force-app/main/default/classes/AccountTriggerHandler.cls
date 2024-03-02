public class AccountTriggerHandler {
    public static void updateRating(List<Account> AccList){
        //System.debug('testing deployment');
    for(Account acc : AccList){
        if(acc.industry !=null && acc.Industry =='Media'){
                acc.rating ='Hot';
        }
    }
    }
}