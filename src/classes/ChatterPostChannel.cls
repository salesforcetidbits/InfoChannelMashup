public with sharing class ChatterPostChannel implements InfoChannel{

	public DateTime createdDate;
	public String body;
	public String createdById;
	public String createdByName;

	public ChatterPostChannel(FeedItem f) {
		createdDate = f.createdDate;
		body = f.body;
		createdById = f.createdById;
		createdByName = f.createdBy.Name;
	}

	public DateTime getCreatedDate(){
		return createdDate;
	}

	public String getBody(){
		return body;
	}

	public String getCreatedById(){
		return createdById;
	}

	public String getCreatedByName(){
		return createdByName;
	} 

	public PageReference createNew(){
		return null;
	}

}