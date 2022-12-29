namespace EMS_UI
{
    interface IEmployeeOperations1
    {
        void Add(Employee employee);
        void X();

    }
    interface IEmployeeOperations2
    {
        void Delete(int id);
        void X();
    }
    // abstract modifier means, the thing (class/methods/property) it is applied to has missing or incomplete implementation
    // as class as an abstract class means that it is intended to be a base class and cannot be instantiated on its own
    public abstract class EmployeeOperations
    {
        // an abstract method is missing the implementation and will be overriden in the child class
        protected abstract void Add(Employee employee);
        public abstract void Delete(int id);
        public virtual void Update(Employee employee)
        {
            Console.WriteLine("Employee Implemented");
        }
    }

    public class EmployeeOperationsImplementation : IEmployeeOperations1, IEmployeeOperations2
    {
        public void Add(Employee employee)//implict implementation of an interface
        {
            throw new NotImplementedException();
        }
        void IEmployeeOperations1.X()
        {
            throw new NotImplementedException();
        }
        void IEmployeeOperations2.X()//explicit implementation of an interface
        {
            throw new NotImplementedException();
        }
        public void Delete(int id)
        {
            throw new NotImplementedException();
        }
    }
}