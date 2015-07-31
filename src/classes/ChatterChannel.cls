/**
* @author Robert Strunk
* @date 2015-07-25
*
* @description Chatter channel extension for the InfoChannel abstract class.
*
*/

public with sharing class ChatterChannel extends InfoChannel {

    public ChatterChannel(FeedItem f) {
        createdDate = f.createdDate.format();
        createdById = f.createdById;
        createdByName = f.createdBy.Name;
        body = f.body;
        channel = 'Chatter Post';
    }
}