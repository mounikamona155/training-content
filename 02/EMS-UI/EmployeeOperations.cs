namespace EMS_UI
{
    // abstract modifier means, the thing (class/methods/property) it is applied to has missing or incomplete implementation
    // as class as an abstract class means that it is intended to be a base class and cannot be instantiated on its own
    public abstract class EmployeeOperations
    {
        // an abstract method is missing the implementation and will be overriden in the child class
        protected abstract void Add(Employee employee);
        public abstract void Delete(int id);
        public virtual void Update(Employee employee){
            Console.WriteLine("Employee Implemented");
        }
    }

    public class EmployeeOperationsImplementation : EmployeeOperations{
        protected override void Add(Employee employee)
        {
            throw new NotImplementedException();
        }
        public override void Delete(int id)
        {
            throw new NotImplementedException();
        }
    }
}