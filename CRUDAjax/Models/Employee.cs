using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRUDAjax.Models
{
    public class Employee
    {
        public int EmployeeID { get; set; }

        public string Name { get; set; }
        
        public int Age { get; set; }
        
        public string State { get; set; }
        
        public string Country { get; set; }
    }
}
