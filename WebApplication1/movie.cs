using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class movie
    {
        //khai bao
        public int id;
        public string movieName;
        public string movieTitle;
        public string movieDescription;
        public string movieNational;
        public int movieTime;
        public int movieYearStart;
        public string movieGenre;
        public string movieImg;
        public int moviePrice;

        //constructor
        public movie() { }

        public movie(int id, string movieName, string movieTitle, string movieDescription, string movieNational, int movieTime, int movieYearStart, string movieGenre, string movieImg, int moviePrice)
        {
            this.id = id;
            this.movieName = movieName;
            this.movieTitle = movieTitle;
            this.movieDescription = movieDescription;
            this.movieNational = movieNational;
            this.movieTime = movieTime;
            this.movieYearStart = movieYearStart;
            this.movieGenre = movieGenre;
            this.movieImg = movieImg;
            this.moviePrice = moviePrice;
           
        }

        //getter and setter
        //id
        public int ID
        {
            get => id;
            set => id = value;
        }

        //movieName
        public string MovieName
        {
            get => movieName;
            set => movieName = value;
        }

        //movieTitle
        public string MovieTitle
        {
            get => movieTitle;
            set => movieTitle = value;
        }

        //movieDescription
        public string MovieDescription
        {
            get => movieDescription;
            set => movieDescription = value;
        }

        //movieNational
        public string MovieNational
        {
            get => movieNational;
            set => movieNational = value;
        }

        //movieTime
        public int MovieTime
        {
            get => movieTime;
            set => movieTime = value;
        }

        //movieYearStart
        public int MovieYearStart
        {
            get => movieYearStart;
            set => movieYearStart = value;
        }

        //movieGenre
        public string MovieGenre
        {
            get => movieGenre;
            set => movieGenre = value;
        }

        //movieImg
        public string MovieImg
        {
            get => movieImg;
            set => movieImg = value;
        }

        //moviePrice
        public int MoviePrice
        {
            get => moviePrice;
            set => moviePrice = value;
        }
    }
}