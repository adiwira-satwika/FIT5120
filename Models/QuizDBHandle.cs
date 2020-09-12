using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Environment_Green.Models
{
    public class QuizDBHandle
    {
        private SqlConnection con;
        private void connection()
        {
            string constring = ConfigurationManager.ConnectionStrings["quizconn"].ToString();
            con = new SqlConnection(constring);
        }

        // **************** ADD NEW Quiz Entry *********************
        public bool AddQuiz(FormOneViewModel model)
        {
            connection();
            SqlCommand cmd = new SqlCommand("AddQuiz", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@States", model.States);
            cmd.Parameters.AddWithValue("@Occupants", model.Occupants);
            cmd.Parameters.AddWithValue("@Income", model.Income);
            cmd.Parameters.AddWithValue("@EnergyBills", model.EnergyBills);
            cmd.Parameters.AddWithValue("@HeaterTypes", model.HeaterTypes);
            cmd.Parameters.AddWithValue("@HeaterDuration", model.HeaterDuration);
            cmd.Parameters.AddWithValue("@WMTypes", model.WMTypes);
            cmd.Parameters.AddWithValue("@WashingFrequency", model.WashingFrequency);
            cmd.Parameters.AddWithValue("@Room", model.Room);
            cmd.Parameters.AddWithValue("@BulbTypes", model.BulbTypes);
            cmd.Parameters.AddWithValue("@BulbDuration", model.BulbDuration);

            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (i >= 1)
                return true;
            else
                return false;
        }

        // ********** VIEW STUDENT DETAILS ********************
        public List<FormOneViewModel> GetQuiz()
        {
            connection();
            List<FormOneViewModel> quizlist = new List<FormOneViewModel>();

            SqlCommand cmd = new SqlCommand("ViewQuiz", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            con.Open();
            sd.Fill(dt);
            con.Close();

            foreach (DataRow dr in dt.Rows)
            {
                quizlist.Add(
                    new FormOneViewModel
                    {
                        ID = Convert.ToInt32(dr["Id"]),
                        States = Convert.ToString(dr["States"]),
                        Occupants = Convert.ToInt32(dr["Occupants"]),
                        Income = Convert.ToDouble(dr["Income"]),
                        EnergyBills = Convert.ToDouble(dr["EnergyBills"]),
                        WaterBills = Convert.ToDouble(dr["WaterBills"]),
                        HeaterTypes = Convert.ToString(dr["HeaterTypes"]),
                        HeaterDuration = Convert.ToInt32(dr["HeaterDuration"]),
                        WMTypes = Convert.ToString(dr["WMTypes"]),
                        WashingFrequency = Convert.ToInt32(dr["WashingFrequency"]),
                        Room = Convert.ToInt32(dr["Room"]),
                        BulbTypes = Convert.ToString(dr["BulbTypes"]),
                        BulbDuration = Convert.ToInt32(dr["BulbDuration"])
                    });
            }
            return quizlist;
        }
    }
}