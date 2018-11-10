using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace USAAProject
{
    public class Employee
    {
        private string firstName;
        private string lastName;
        private string email;
        private string password;
        private string beltLevel;
        private string department;
        private string location;
        private string aboutMe;

        public Employee(string firstName, string lastName, string email, string password, string beltLevel)
        {
            this.firstName = firstName;
            this.lastName = lastName;
            this.email = email;
            this.password = password;
            this.beltLevel = beltLevel;
        }

        public Employee()
        { }

        public Employee(string firstName, string lastName, string email, string password, string beltLevel, string department, string location, string aboutMe)
        {
            this.firstName = firstName;
            this.lastName = lastName;
            this.email = email;
            this.password = password;
            this.beltLevel = beltLevel;
            this.department = department;
            this.location = location;
            this.aboutMe = aboutMe;
        }

        public override string ToString()
        {
            return firstName + " " + LastName;
        }

        public string FirstName { get => firstName; set => firstName = value; }
        public string LastName { get => lastName; set => lastName = value; }
        public string Email { get => email; set => email = value; }
        public string Password { get => password; set => password = value; }
        public string BeltLevel { get => beltLevel; set => beltLevel = value; }
        public string Department { get => department; set => department = value; }
        public string Location { get => location; set => location = value; }
        public string AboutMe { get => aboutMe; set => aboutMe = value; }
    }
}