public abstract class InfoChannel implements comparable {

    public DateTime createdDate     {get;set;}
    public String   body            {get;set;}
    public String   createdById     {get;set;}
    public String   createdByName   {get;set;}
    public String   channel         {get;set;}

    //Defaults comparable sort order to createdDate ASC.
    public Integer compareTo(Object compareTo){

        InfoChannel comparedInfoChannel = (InfoChannel) compareTo;

        //initialize to zero for tie
        Integer result = 0;

        if(createdDate > comparedInfoChannel.createdDate){
            result = -1;
        }
        else if(createdDate < comparedInfoChannel.createdDate){
            result = 1;
        }

        return result;
    }
}