public with sharing class TaskChannel implements InfoChannel{

    public DateTime createdDate;
    public String body;
    public String createdById;
    public String createdByName;

    public TaskChannel(Task t) {
        createdDate = t.createdDate;
        body = t.description;
        createdById = t.createdById;
        createdByName = t.createdBy.Name;
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
        PageReference tmp = new PageReference('/00T/e');
        tmp.setRedirect(true);
        return tmp;
    }   
}