/**
* @author Robert Strunk
* @date 2015-07-25
*
* @description Task channel extension for the InfoChannel abstract class.
*
*/

public with sharing class TaskChannel extends InfoChannel {

    public TaskChannel(Task t) {
        createdDate = t.createdDate.format();
        createdById = t.createdById;
        createdByName = t.createdBy.Name;
        body = t.description;
        channel = 'Task';
    }
}