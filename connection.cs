using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;

/// <summary>
/// Summary description for Class1
/// </summary>
public class connection

{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER01;Initial catalog=kiosk; Integrated Security=True;");
    DataTable reg = new DataTable();
    public connection()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    //insertion code

    public string testinsert(string fname, string lname, string email, string pass, string repass, string mob)
    {
        try
        {
            //data table cloumn names firstname,lastname,emailid......
            string y = "insert into reg( firstname, lastname, email, pass, retype, mobile) values('" + fname + "', '" + lname + "', '" + email + "', '" + pass + "', '" + repass + "','" + mob + "')";
            SqlCommand cmd = new SqlCommand(y, con);
            con.Open();
            cmd.ExecuteNonQuery().ToString();
            con.Close();
            return "1";
        }
        catch (Exception ex)
        {
            return "0";
        }
    }

    //update

    public string testupdate(string fname, string lname, string email, string pass1, string repass, string mob, string remail)
    {
        try
        {
            //data table column names--- firstname,lastname, pass.....

            string x = "update reg set firstname='" + fname + "', lastname='" + lname + "', pass='" + pass1 + "',retype='" + repass + "', mobile='" + mob + "',remail='" + remail + "' where email='" + email + "' ";
            SqlCommand cmd = new SqlCommand(x, con);
            con.Open();
            cmd.ExecuteNonQuery().ToString();
            con.Close();
            return "1";
        }
        catch (Exception ex)
        {
            return "0";
        }
    }

    //delete code

    public string testdelete(string emailid)
    {
        try
        {
            string z = "delete from reg where email='" + emailid + "' ";
            SqlCommand cmd = new SqlCommand(z, con);
            con.Open();
            cmd.ExecuteNonQuery().ToString();
            con.Close();
            return "1";
        }
        catch (Exception ex)
        {
            return "0";
        }
    }

    //login code

    public string testlogin(String id)
    {
        try
        {
            string b = "select pass from reg where email='" + id + "'";
            SqlCommand cmd = new SqlCommand(b, con);
            con.Open();
            string pwd = cmd.ExecuteScalar().ToString();
            return pwd;

        }
        catch (Exception ex)
        {
            return "0";
        }
    }

    //get emp details(using sessions to get employee details when they login ex: welcome swathi)

    public DataTable empdet(string id)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from reg where email='" + id + "'", con);
        da.Fill(reg);
        return reg;
    }

    //admin_trainlist insertion

    public string traininsert(string from, string to, string dept, string arr, string tno, string type, string quota, string sl, string a3, string a2, string a1, string cc, string s2, string doj )
    {
        try
        {
            //data table cloumn names firstname,lastname,emailid......
            string y = "insert into trains_list([from], [To], Dept, Arri, TrainNo, Type, Quota, avail_SL, avail_3A, avail_2A, avail_1A, avail_CC, avail_2S, Doj ) values('" + from + "', '" + to + "', '" + dept + "', '" + arr + "', '" + tno + "', '" + type + "', '" + quota + "', '" + sl + "','" + a3 + "','" + a2 + "','" + a1 + "','" + cc + "' ,'" + s2 + "','" + doj + "' )";
            SqlCommand cmd = new SqlCommand(y, con);
            con.Open();
            cmd.ExecuteNonQuery().ToString();
            con.Close();
            return "1";
        }
        catch (Exception ex)
        {
            return "0";
        }
    }



    //admin_hotellist insertion

    public string hotelinsert(string name, string city, string type, string phoneno, string area, string avail, string occ, string cost)
    {
        try
        {
            //data table cloumn names firstname,lastname,emailid......
            string y = "insert into hotel_list(Name, City, Area, PhoneNo, Available, Occupied, type,cost) values('" + name + "', '" + city + "', '" + area + "', '" + phoneno + "', '" + avail + "','" + occ + "','" + type + "','" + cost + "' )";
            SqlCommand cmd = new SqlCommand(y, con);
            con.Open();
            cmd.ExecuteNonQuery().ToString();
            con.Close();
            return "1";
        }
        catch (Exception ex)
        {
            return "0";
        }
    }


    //admin_buslist insertion

    public string businsert(string from, string to, string sno, string avail, string occ, string type,string dept, string arr, string dis,string fare)
    {
        try
        {
            //data table cloumn names firstname,lastname,emailid......
            string y = "insert into bus_list([From], [To], ServiceNo,available, occupied, type,  Departure,  Arrival, Distance,Fare) values('" + from + "', '" + to + "', '" + sno + "', '" + avail + "','" + occ + "','" + type + "','" + dept + "','" + arr + "','" + dis + "','" + fare + "')";
            SqlCommand cmd = new SqlCommand(y, con);
            con.Open();
            cmd.ExecuteNonQuery().ToString();
            con.Close();
            return "1";
        }
        catch (Exception ex)
        {
            return "0";
        }
    }



    //admin_flightlist insertion

    public string flightinsert(string from, string to, string fno, string eco_avail, string bus_avail, string type,string airlines,string via,string dep,string arr,string eco_price, string bus_price)
    {
        try
        {
            //data table cloumn names firstname,lastname,emailid......
            string y = "insert into flights_list([From], [To], eco_avai, bus_avai, FlightNo, Type, Airlines,via,dept,arri,Economy_price,Business_price) values('" + from + "', '" + to + "', '" + eco_avail + "', '" + bus_avail + "'  ,'" + fno + "', '" + type + "', '" + airlines + "', '" + via + "', '" + dep + "', '" + arr + "', '" + eco_price + "' ,'" + bus_price+ "' )";
            SqlCommand cmd = new SqlCommand(y, con);
            con.Open();
            cmd.ExecuteNonQuery().ToString();
            con.Close();
            return "1";
        }
        catch (Exception ex)
        {
            return "0";
        }

    }

       // trains fares calculator
    
    public string trainfares(string from, string to, string class1, string quo, string trainno, string type, string base1,   string reser, string super, string tatkal, string grand)
    {
        try
        {
            //data table cloumn names firstname,lastname,emailid......
            string y = "insert into train_fare_card([From],[To],Class, Quota, Type, [Base Fare], [Train No], [Reservation Charges], [Super Fast Charges], [Tatkal  Charges],[Total Fare] ) values('" + from + "','" + to + "','" + class1 + "','" + quo + "','" + type + "', '" + base1 + "', '" + trainno + "',  '" + reser + "','" + super+ "', '" + tatkal + "', '" + grand + "')";
            SqlCommand cmd = new SqlCommand(y, con);
            con.Open();
            cmd.ExecuteNonQuery().ToString();
            con.Close();
            return "1";
        }

        catch (Exception ex)
        {
            return "0";
        }
    }
}


