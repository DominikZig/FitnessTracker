package com.pluralsight.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.pluralsight.model.Goal;

@Controller
@SessionAttributes("goal") //stores the 'goal' attribute within the session
public class GoalController
{
    //First, just creates the goal object with a default value and displays it
    @RequestMapping(value = "/addGoal", method = RequestMethod.GET)
    public String addGoal(Model model)
    {
        Goal goal = new Goal();
        goal.setMinutes(10);

        model.addAttribute("goal", goal);

        return "addGoal";
    }

    /*
     When the user enters a new value, updates the minutes variable of the goal object, then redirects to the addMinutes page (which displays
     their updated goal)
    */
    @RequestMapping(value = "/addGoal", method = RequestMethod.POST)
    public String updateGoal(@Valid @ModelAttribute("goal") Goal goal, BindingResult result)
    {
        System.out.println("result has errors:" + result.hasErrors());

        System.out.println("Minutes updated:" + goal.getMinutes());

        if (result.hasErrors())
        {
            return "addGoal";
        }

        return "redirect:addMinutes.html";
    }
}
