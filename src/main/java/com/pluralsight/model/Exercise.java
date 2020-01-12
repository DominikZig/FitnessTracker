package com.pluralsight.model;

public class Exercise
{
    //Could add validation on these two variables, but would have to split up based on request type in MinutesController like we did in GoalController
    //@Range(min = 1, max = 120)
    private int minutes;

    //@NotNull
    private String activity;

    public int getMinutes()
    {
        return minutes;
    }

    public void setMinutes(int minutes)
    {
        this.minutes = minutes;
    }

    public String getActivity()
    {
        return activity;
    }

    public void setActivity(String activity)
    {
        this.activity = activity;
    }
}
