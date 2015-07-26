public with sharing class TaskChannel extends InfoChannel {

	public TaskChannel(Task t) {
		createdDate = t.createdDate;
		createdById = t.createdById;
		createdByName = t.createdBy.Name;
		body = t.description;
		channel = 'Task';
	}
}