package com.ideas2it.luxitrip.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ideas2it.luxitrip.exception.CustomException;
import com.ideas2it.luxitrip.model.Bus;
import com.ideas2it.luxitrip.model.Reservation;
import com.ideas2it.luxitrip.model.Route;
import com.ideas2it.luxitrip.model.Schedule;
import com.ideas2it.luxitrip.model.Stop;
import com.ideas2it.luxitrip.service.ReservationService;
import com.ideas2it.luxitrip.service.RouteService;
import com.ideas2it.luxitrip.service.StopService;

@Controller
public class ReservationController {
    @Autowired
    StopService stopService;
    
    @Autowired
    ReservationService reservationService; 
    
    /**
     * 
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getSchedules")
    public ModelAndView displayBusByOriginAndDestination(HttpServletRequest request,
            HttpServletResponse response) {
        ModelAndView model = new ModelAndView("DisplayBuses");
        try {
            Stop origin = stopService.retrieveStopById(Integer.parseInt(request.getParameter("source")));
            Stop destination = stopService.retrieveStopById(Integer.parseInt(request.getParameter("destination")));
            System.out.println("Reached (****************8");
            for(Schedule schedule : reservationService.getSchedules(origin,destination)) {
                System.out.println("After");
                System.out.println(schedule);
                System.out.println("finish");
            }
        } catch(CustomException exception) {
            model = new ModelAndView("ErrorPage","error",exception);
        }
        return model;
    }
     

    /**
     * Method used to get the User from the database by using the userId
     * @param request
     * @param response
     * @return the userObject to the requested page
     * @throws ServletException
     * @throws IOException
     */
    @RequestMapping("/displayReservation")
    public ModelAndView getUserById(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        try {
            return new ModelAndView("bookingConfirmation", "user", 
                    reservationService.retrieveUserById((Integer.parseInt(request.getParameter("userId")))));
        } catch(CustomException ex) {
            return new ModelAndView("Message", "message", ex.getMessage());
        }
    }
    
    public ModelAndView BookingTickets(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        Reservation reservation = new Reservation();
         
        
    }
}
