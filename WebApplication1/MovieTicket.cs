using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class MovieTicket
    {
        private int id;
        private int numberOfTicket;

        //constructor
        public MovieTicket() { }

        public MovieTicket(int id, int numberOfTicket)
        {
            this.id = id;
            this.numberOfTicket = numberOfTicket;
        }

        //getter and setter
        public int ID
        {
            get => id;
            set => id = value;
        }

        public int NumberOfTicket
        {
            get => numberOfTicket;
            set => numberOfTicket = value;
        }

    }
}