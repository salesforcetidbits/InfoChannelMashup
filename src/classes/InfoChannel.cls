/**
* @author Robert Strunk
* @date 2015-07-25
*
* @description An abstract class that represents an information source for an sObject.
*
*/

public abstract class InfoChannel implements comparable {

    public String   createdDate     {get;set;}
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