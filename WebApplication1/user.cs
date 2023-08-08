using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class user
    {
        private string userName;
        private string userEmail;
        private string userPassword;
        private List<MovieTicket> movieTicket;
        //private int lo

        //constructor
        public user()
        {

        }

        public user(string userName, string userEmail, string userPassword)
        {
            this.userName = userName;
            this.userEmail = userEmail;
            this.userPassword = userPassword;
        }

        public user(string userName, string userEmail, string userPassword, List<MovieTicket> movieTicket)
        {
            this.userName = userName;
            this.userEmail = userEmail;
            this.userPassword = userPassword;
            this.movieTicket = movieTicket;
        }

        //setter and getter
        //username
        public string UserName {
            get => userName;
            set => userName = value;
        }

        //useremail
        public string UserEmail
        {
            get => userEmail;
            set => userName = value;
        }

        //userpassword
        public string UserPassword
        {
            get => userPassword;
            set => userPassword = value;
        }

        //listMovieTicket
        public List<MovieTicket> MovieTicket
        {
            get => movieTicket;
            set => movieTicket = value;
        }

    }
}