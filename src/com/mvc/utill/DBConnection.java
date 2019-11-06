package com.mvc.utill;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {


        public static Connection createConnection()
        {
            Connection con = null;
            String url = "jdbc:postgresql://localhost:5432/timetabledb"; //MySQL URL followed by the database name
            String username = "postgres"; //MySQL username
            String password = "1Q2w3e4r5t"; //MySQL password

            try
            {
                try
                {
                    Class.forName("org.postgresql.Driver"); //loading MySQL drivers. This differs for database servers
                }
                catch (ClassNotFoundException e)
                {
                    e.printStackTrace();
                }

                con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
                System.out.println("Printing connection object "+con);
            }
            catch (Exception e)
            {
                e.printStackTrace();
            }

            return con;
        }
    }

