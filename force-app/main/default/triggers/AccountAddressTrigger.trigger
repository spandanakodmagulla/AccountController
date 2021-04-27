trigger AccountAddressTrigger on Account (before insert,before update)
{
    list<account> acc= new list<account>();
    for(account a:trigger.new)
    {
        if(a.Match_Billing_Address__c==true){
            a.ShippingStreet=a.BillingStreet;
            a.ShippingPostalCode=a.BillingPostalCode;
            a.ShippingCity=a.BillingCity;
            a.ShippingState=a.BillingState;
            a.ShippingCountry=a.BillingCountry;
        }
    }
    

}