public with sharing class ChatterChannel extends InfoChannel {

	public ChatterChannel(FeedItem f) {
		createdDate = f.createdDate;
		createdById = f.createdById;
		createdByName = f.createdBy.Name;
		body = f.body;
		channel = 'Chatter Post';
	}
}