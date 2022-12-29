namespace EMSLib;
public class Person
{
    public int Id { get; set; }
    public string Name { get; set; }
    public short Age { get; set; }

    public override string ToString()
    {
        return $"Id - {Id}\nName - {Name}\nAge - {Age}";
    }
}
