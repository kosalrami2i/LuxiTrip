package com.ideas2it.luxitrip.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Proxy;

@Entity
@Table(name = "schedule")
@Proxy(lazy = false)
public class Schedule {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", length=11, nullable=false, unique=true)
    private int id;
    
    @Column(name = "departure")
    private Date departureTime;
    
    @Column(name = "arrival")
    private Date arrivalTime;
    
    @ManyToOne
    private Bus bus;
    
    @ManyToOne
    private User driverId;
    
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name="schedule_id")
    private Set<Midway> midway;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDepartureTime() {
        return departureTime;
    }

    public void setDepartureTime(Date departureTime) {
        this.departureTime = departureTime;
    }

    public Date getArrivalTime() {
        return arrivalTime;
    }

    public void setArrivalTime(Date arrivalTime) {
        this.arrivalTime = arrivalTime;
    }

    public Bus getBus() {
        return bus;
    }

    public void setBus(Bus bus) {
        this.bus = bus;
    }

    public User getDriverId() {
        return driverId;
    }

    public void setDriverId(User driverId) {
        this.driverId = driverId;
    }

    public Set<Midway> getMidway() {
        return midway;
    }

    public void setMidway(Set<Midway> midway) {
        this.midway = midway;
    }

    @Override
    public String toString() {
        return "Schedule [id=" + id + ", departureTime=" + departureTime + ", arrivalTime=" + arrivalTime + ", busID="
                + bus + ", driverId=" + driverId + "]";
    }


}
