public with sharing class EventChannel implements InfoChannel{

	public DateTime createdDate;
	public String body;
	public String createdById;
	public String createdByName;

	public EventChannel(Event e) {
		createdDate = e.createdDate;
		body = e.description;
		createdById = e.createdById;
		createdByName = e.createdBy.Name;
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
		PageReference tmp = new PageReference('/00U/e');
		tmp.setRedirect(true);
		return tmp;
	}

}