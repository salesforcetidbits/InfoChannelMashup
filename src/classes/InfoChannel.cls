global interface InfoChannel {

    DateTime getCreatedDate();
    String getBody();
    String getCreatedById();
    PageReference createNew();
    String getCreatedByName();
}