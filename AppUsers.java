package com.developer.SpringMYSQL.Models;

import javax.persistence.*;

@Entity
@Table(name = "products")
public class AppUsers
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;
    @Column(name = "description")
    public String description;
    @Column(name = "price")
    public String price;
    @Column(name = "color")
    public String color;

    public AppUsers()
    {

    }

    public AppUsers(String description, String price, String color)
    {
        this.description = description;
        this.price = price;
        this.color = color;
    }

    public int getid()
    {
        return id;
    }

    public void setid(int id)
    {
        this.id = id;
    }

    public String getdescription()
    {
        return description;
    }

    public void setdescription(String description)
    {
        this.description = description;
    }

    public String getprice()
    {
        return price;
    }

    public void setprice(String price)
    {
        this.price = price;
    }

    public String getcolor()
    {
        return color;
    }

    public void setcolor(String color)
    {
        this.color = color;
    }
}
