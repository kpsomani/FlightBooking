<%@page import="com.practice1.model.UserData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html>
<html>
    <head>
       <title>Home</title>
       <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
       <link href="https://fonts.googleapis.com/css2?family=Odibee+Sans&family=Pacifico&display=swap" rel="stylesheet">
       <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap" rel="stylesheet">
       <style>
           *
           {
             margin: 0px;
             padding: 0px;
           }
           .navbar
           {
             background-color: black;  
             display: flex;
             justify-content: space-around;
             height: 45px;
             align-items: center;
           }
           .navbar p{
               color: white;
               font-family: 'Pacifico', cursive;
               font-size: 20px;
           }
           .navbarlist
           {
               list-style: none;
           }
           .navbarlist li
           {
               color: white;
               float: left;
               margin-right: 15px;

           }
           .navbarlist li a {
               outline: none;
               cursor: pointer;
               font-family: 'Odibee Sans', cursive;
               font-size: 17px;
           }
          .searchdivfirst
          {
              background-color: #880000;
              height: 60vh;
              display: flex;
              flex-direction: column;
              align-items: center;
              justify-content: center;
          }
          .searchdivsec
          {
              background-color: white;
              width: 90vmax;
              display: flex;
              margin-bottom: 20px;
          }
          .searchdivsec div{
            flex: 1;
            overflow: hidden;
          }
          .searchdivsec input
          {
             font-family: 'Roboto Slab', serif;
             font-size: 30px;
             width: 100%;
             height: 100%;
          }
          .searchdivsec input::-webkit-input-placeholder {
            font-family: 'Roboto Slab', serif;
            font-size: 30px;
            }
            .searchdivsec input:hover
            {
               background-color: lightcyan;
            }
            .submitbtn
            {
                border-radius:20px;
                background-color:black;
                outline: none;
                color: white;
                border-style: none;
                width: 15%;
                height: 9%;
            }
            .papadiv
            {
                display: grid;
                grid-template-rows: 1fr 1fr;
            }
            .secsection
            {
                background-color: #E0E0E0;
                opacity: .5;
                display: flex;
                flex-direction: column;
                justify-content: space-around;
                align-items: center;
            }
            .secsection p
            {
               font-size: 25px;
            }
            footer
            {
                background-color: black;
                color: white;
                text-align: center;
            }

       </style>
    </head>
    <body>
        <nav class="navbar">
            <p><a>Udaan</a></p>
            <ul class="navbarlist" >
                <li><a>Contact</a></li>
                <li><a>Login</a></li>
            </ul>
        </nav>
        <div class="papadiv">
        <form>
        <div class="searchdivfirst">
          <div class="searchdivsec">
               <div>
                   <input type="search" placeholder="From">
               </div>
               <div>
                <input type="search" placeholder="To">
               </div>
               <div>
                <input type="text" placeholder="Date" onfocus="(this.type='date')">
               </div>
               <div>
                <input type="text" placeholder="Return Date" onfocus="(this.type='date')">
               </div>
               <div>
                <input type="number" placeholder="Travellers">
               </div>

          </div>
          <input type="submit" class="submitbtn" placeholder="Search">
        </div>
        </form>
        <div class="secsection">
           <h1>About</h1>
           <p>thdgdh;kdtophpojhpktpohkpotkhpkjpo oirjgoije oierjhoiej h</p>
        </div>
       </div>
       </div>
       <footer>   
        <p>Contact:kpsomani2@gmail.com</p>
        <p>Kushal Somani</p>
       </footer>


    </body>
</html>