/**
* @author Robert Strunk
* @date 2015-07-25
*
* @description Event channel extension for the InfoChannel abstract class.
*
*/

public with sharing class EventChannel extends InfoChannel {

    public EventChannel(Event e) {
        createdDate = e.createdDate.format();
        createdById = e.createdById;
        createdByName = e.createdBy.Name;
        body = e.description;
        channel = 'Event';
    }
}