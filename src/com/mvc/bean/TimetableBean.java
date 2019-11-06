package com.mvc.bean;

public class TimetableBean {
    private String id_course;
    private String timeBeggin;
    private String timeEnd;
    private String day;
    private String groupName;
    private String subject;
    private String teacher;
    private String lokal;

    public String getId_course() {
        return id_course;
    }

    public TimetableBean(String id_course, String timeBeggin, String timeEnd, String day, String groupName, String subject, String teacher, String lokal) {
        this.id_course = id_course;
        this.timeBeggin = timeBeggin;
        this.timeEnd = timeEnd;
        this.day = day;
        this.groupName = groupName;
        this.subject = subject;
        this.teacher = teacher;
        this.lokal = lokal;
    }

    public void setId_course(String id_course) {
        this.id_course = id_course;
    }

    public TimetableBean() {
    }

    public TimetableBean(String timeBeggin, String timeEnd, String day, String groupName, String subject, String teacher, String lokal) {
        this.timeBeggin = timeBeggin;
        this.timeEnd = timeEnd;
        this.day = day;
        this.groupName = groupName;
        this.subject = subject;
        this.teacher = teacher;
        this.lokal = lokal;
    }

    public String getTimeBeggin() {
        return timeBeggin;
    }

    public void setTimeBeggin(String timeBeggin) {
        this.timeBeggin = timeBeggin;
    }

    public String getTimeEnd() {
        return timeEnd;
    }

    public void setTimeEnd(String timeEnd) {
        this.timeEnd = timeEnd;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getLokal() {
        return lokal;
    }

    public void setLokal(String lokal) {
        this.lokal = lokal;
    }

    @Override
    public String toString() {
        return
                "<strong>"+ timeBeggin  +
                " - " + timeEnd  +"</strong>"+" "+
                 subject +
                " "+ teacher  +
                        "<strong>"+ " lokal: " +"</strong>"+ lokal ;
    }

    public String toStringWithGroup() {
        return
                timeBeggin  +
                        " - " + timeEnd  +
                        " " + day +" <br> "+
                       groupName+
                        " subject: " + subject +

                        " lokal: " + lokal ;
    }
}
