replaceNA<-function(){
    
    activity_noNA<-activity
    
    for (i in 1:17568){
        
        if (is.na(activity_noNA$steps[i])){
            
            interval<-as.character(activity_noNA$interval[i])
            intervalmean<-StepsPerInterval[interval]
            
            activity_noNA$steps[i]<-intervalmean
            
        }
        else {}
        
    }
    
    activity_noNA<<-activity_noNA
    print(head(activity_noNA))
}