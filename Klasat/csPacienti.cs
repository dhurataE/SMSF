using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace SMS.Klasat
{
    public class csPacienti
    {
        public static int RuajPacientin(int Id_Pacienti, string Emri_P, string Mbiemri_P, string DataLindjes_P, string Numri_Kontaktues, string Historia_P)
        {
            int resultati = 0;


            csObjekti obj = new csObjekti();
            SqlParameter[] parameter = new SqlParameter[]
                {
             new SqlParameter("@Case", 1),
             new SqlParameter("@id_Pacienti", Id_Pacienti),
new SqlParameter("@Emri",Emri_P),
new SqlParameter("@Mbiemri", Mbiemri_P),
new SqlParameter("@DataLindjes", DataLindjes_P),
new SqlParameter("@Nr_Kontaktues", Numri_Kontaktues),
new SqlParameter("@Historia_Pacientit", Historia_P)
        };
            resultati = obj.RunPr("[prPacienti]", parameter);
            return resultati;
        }



        public static int ModifikoPacientin(int Id_Pacienti, string Emri_P, string Mbiemri_P, string DataLindjes_P, string Numri_Kontaktues, string Historia_P)
        {
            int rezulati = 0;
            csObjekti objO = new csObjekti();
            SqlParameter[] parameter = new SqlParameter[]
                {
new SqlParameter("@Case", 2),
new SqlParameter("@id_Pacienti", Id_Pacienti),
new SqlParameter("@Emri",Emri_P),
new SqlParameter("@Mbiemri", Mbiemri_P),
new SqlParameter("@DataLindjes", DataLindjes_P),
new SqlParameter("@Nr_Kontaktues", Numri_Kontaktues),
new SqlParameter("@Historia_Pacientit", Historia_P) };
            rezulati = objO.RunPr("prPacienti", parameter);

            return rezulati;
        }
        public static int FshiPacientin(int Id_Pacienti)
        {
            int rezulati = 0;
            csObjekti objO = new csObjekti();
            SqlParameter[] parameter = new SqlParameter[]
                {
                    new SqlParameter("@Case",3),
                    new SqlParameter("@id_Pacienti", Id_Pacienti)
                };
            return rezulati;
        }
    }
}