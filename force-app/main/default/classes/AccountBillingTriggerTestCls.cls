/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an org are executed whenever Apex code is deployed
 * to a production org to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production org. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the org size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class AccountBillingTriggerTestCls {

    @isTest
    static void updateBillingToShippingInAccount() {
        // TO DO: implement unit test
        Account  a = new Account();
        a.Name ='TestBillingToShippingTrigger';
        a.BillingStreet ='123 Billing St.';
        a.BillingCity ='San Francisco';
        a.BillingState = 'CA';
        a.BillingPostalCode ='94101';
        a.BillingCountry= 'USA';
        a.phone = '510-555-1';
        a.CopyBillingToShipping__c=true;

        insert a;
        
        Account acc =
        [Select id,
        ShippingStreet,
        ShippingCity,
        ShippingState,
        ShippingPostalCode,
        ShippingCountry from Account where id =:a.id];
        
        //Verify if billing details are copied into Shippingdetails
        System.assertEquals('123 Billing St.', acc.ShippingStreet);
        System.assertEquals('San Francisco',acc.ShippingCity);
        System.assertEquals('CA', acc.ShippingState);
        System.assertEquals('94101', acc.ShippingPostalCode);   
        System.assertEquals('USA', acc.ShippingCountry);  
    }
}