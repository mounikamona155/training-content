namespace EMS_UI
{
    enum Authority{
        Hire, Fire, Delegate, Approve, Reject
    }
    class Manager : Employee
    {
        public Authority authority;
        internal decimal housingAllowance, paidVacation;
    }
}