namespace EMS_UI
{
    enum Authority
    {
        Hire, Fire, Delegate, Approve, Reject
    }
    public partial class Employee
    {
        internal decimal payRate, taxes, healthCare, bonus, reimbursements, hours, overTime;
        public virtual decimal CalculateSalary()
        {
            System.Console.WriteLine($"Pay rate - {payRate}\nHours - {hours}\nBonus - {bonus}\nReimbursements - {reimbursements}\nOvertime - {overTime}\n------Deductions-----\ntaxes - {taxes}\nhealthcare - {healthCare}");
            return payRate*hours + reimbursements+bonus -healthCare-taxes;
        }
        internal string GetDetails()
        {
            return $"Employee Id - {Id} \nEmployee name - {FirstName} {LastName}";
        }
        internal string GetDetails(string Id, string firstName, string lastName)
        {
            this.firstName = firstName;
            this.lastName = lastName;
            this.Id = Id;
            return $"Employee Id - {Id} \nEmployee name - {firstName} {lastName}";
        }
    }
    class Manager : Employee
    {
        public Authority authority;
        internal decimal housingAllowance, paidVacation;
        public override decimal CalculateSalary()
        {
            decimal salaryPart=base.CalculateSalary();
            System.Console.WriteLine($"\n------Extras-----------\nPaid vacation - {paidVacation}\nHousing allowance - {housingAllowance}");
            return salaryPart+paidVacation+housingAllowance;
        }
    }
}