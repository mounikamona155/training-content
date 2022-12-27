// user-defined namespace
namespace EMS_UI
{
    // Types
    partial class Employee
    {
        //int? age;//nullable integer
        //type members - variable (define state/attribute of the object)
        string firstName, lastName;
        // properties is another way to represent encapsulation
        public string FirstName
        {
            //readable accessor
            get
            {
                // + is used in strings to do string concatenation but it is inefficient way because strings are immutable, use string Builder instead
                //if(firstName != "" || firstName != null)
                if (String.IsNullOrEmpty(firstName))
                    throw new InvalidDataException("The firstname is empty or null");
                return firstName;
            }
            //writable accessor
            set
            {
                if (value.Length <= 0)
                    throw new InvalidDataException("The firstname should not be empty");
                firstName = value;
            }
            //to assign a new value only dueing object construction
            //init;
        }
        public string LastName
        {
            get
            {
                if (String.IsNullOrEmpty(lastName))
                    throw new InvalidDataException("The lastname is empty");
                return lastName;

            }
            set
            {
                if (value.Length <= 0)
                    throw new InvalidDataException("The firstname should not be empty");
                lastName = value;
            }
        }
        // this is called auto-property - where it does not find any declared private variable. so implicitly it creates a private variable behind the scenes
        public string Id { get; set; }

        //parameterlesss constructor
        public Employee()//:this("Chanel","Lora")
        {
            //default values
            Id = "101";
            firstName = "Lilly";
            lastName = "Windsor";
        }

        //parameterized constructor
        public Employee(string firstName, string lastName)
        {
            this.firstName = firstName;
            this.lastName = lastName;
        }
    }
}