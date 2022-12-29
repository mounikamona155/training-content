namespace EMS_UI
{
     class A
    {
        const float pi = 22/7;
        static readonly float y = 10;// statuc readonly can only be initialized in the static constructor as oppose to instance constructor
        static int x; 
        static A()
        {
            y=12;
        }
        static void Method1(){
            //pi=3.14f;
           
        }        
    }
    class B:A{

    }
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
        public abstract void Add(Employee employee);
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