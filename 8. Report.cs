using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Employees
{
    #region Employees
    public class Employees
    {
        #region Member Variables
        protected int _emp_no;
        protected unknown _birth_date;
        protected string _first_name;
        protected string _last_name;
        protected unknown _gender;
        protected unknown _hire_date;
        #endregion
        #region Constructors
        public Employees() { }
        public Employees(unknown birth_date, string first_name, string last_name, unknown gender, unknown hire_date)
        {
            this._birth_date=birth_date;
            this._first_name=first_name;
            this._last_name=last_name;
            this._gender=gender;
            this._hire_date=hire_date;
        }
        #endregion
        #region Public Properties
        public virtual int Emp_no
        {
            get {return _emp_no;}
            set {_emp_no=value;}
        }
        public virtual unknown Birth_date
        {
            get {return _birth_date;}
            set {_birth_date=value;}
        }
        public virtual string First_name
        {
            get {return _first_name;}
            set {_first_name=value;}
        }
        public virtual string Last_name
        {
            get {return _last_name;}
            set {_last_name=value;}
        }
        public virtual unknown Gender
        {
            get {return _gender;}
            set {_gender=value;}
        }
        public virtual unknown Hire_date
        {
            get {return _hire_date;}
            set {_hire_date=value;}
        }
        #endregion
    }
    #endregion
}