public with sharing class InfoMash_Account {

    private final Account myAccount;
    public List<infoChannel> mashes {get;set;}

    public InfoMash_Account(ApexPages.StandardController stdController) {

        this.myAccount = (Account)stdController.getRecord();
        mashes = new List<infoChannel>();

        for(Task t : [  SELECT Id, CreatedDate, CreatedById, CreatedBy.Name, Description FROM TASK
                        WHERE accountId =: this.myAccount.id order by createdDate ASC Limit 1000]){

            mashes.add(new TaskChannel(t));
        }

        for(Event e : [ SELECT Id, CreatedDate, CreatedById, CreatedBy.Name, Description FROM EVENT
                        WHERE accountId =: this.myAccount.id order by createdDate ASC Limit 1000]){

            mashes.add(new EventChannel(e));
        }

        for(FeedItem c : [  SELECT Id, CreatedDate, CreatedById, CreatedBy.Name, Body FROM FeedItem
                            WHERE parentId =: this.myAccount.id order by createdDate ASC Limit 1000]){

            mashes.add(new ChatterChannel(c));
        }

        mashes.sort();
    }
}