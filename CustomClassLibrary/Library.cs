using System;

namespace CustomClassLibrary
{
    public class Library
    {
        public static int Session;

        public string ModuleCode { get; set; }

        public string ModuleName { get; set; }
      
        public int ModuleCredits { get; set; }

        public int Classhour { get; set; }

        public int Numweeks { get; set; }

        public int HoursSpent { get; set; }

        public string Date { get; set; }

        public double SelfStudy { get; set; }
        public double Remaining { get; set; }

        public void setSession(int x) {
            Session = x;
        }
        public int s() {
            return Session;
        }


        public double self_study()
        {

            SelfStudy = ((ModuleCredits * 10) / Numweeks) - Classhour;

            return SelfStudy;
        }

        public double Remaining_Time()
        {

            Remaining = SelfStudy - HoursSpent;

            return Remaining;
        }

    }
}
