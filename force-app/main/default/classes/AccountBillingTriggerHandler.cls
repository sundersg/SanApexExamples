public  class AccountBillingTriggerHandler {
    public static void copyBillingToShipping(List<Account> Acclist){
       System.debug('AccontBillingTriggerHandler');
       for (Account acc : Acclist) {
           if (acc.CopyBillingToShipping__c==true&& acc.BillingStreet!=null
           && acc.BillingCity!=null && acc.BillingCountry!=null && acc.BillingPostalCode!=null
           && acc.BillingState!=null){
            acc.ShippingStreet = acc.BillingStreet;
            acc.ShippingCity = acc.BillingCity ;
            acc.ShippingPostalCode = acc.BillingPostalCode;
            acc.ShippingState = acc.BillingState;
            acc.ShippingCountry= acc.BillingCountry;

           }
    }
} 
}