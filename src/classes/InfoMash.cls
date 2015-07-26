global class InfoMash implements comparable {


    //Interface implementation being wrapped.
    global InfoChannel channel {get;set;}

    global InfoMash(InfoChannel ic){
        this.channel = ic;
    }

    //CompareTo Implementation. Defaults order by to createdDate ASC.
    global Integer compareTo(Object compareTo){

        InfoMash comparedInfoChannel = (InfoMash) compareTo;

        //initialize to zero for tie
        Integer result = 0;

        if(channel.getCreatedDate() > comparedInfoChannel.channel.getCreatedDate()){
            result = -1;
        }
        else if(channel.getCreatedDate() < comparedInfoChannel.channel.getCreatedDate()){
            result = 1;
        }

        System.debug(result);
        return result;
    }   
}