namespace WebApplicationSections.Models;

public class DataContainer
{
    public int Id { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public SubContainer SubContainer { get; set; }  
    public DataContainer()
    {
        SubContainer = new SubContainer()
        {
            Active = true, Items = new []{"One", "Two", "Three"}
        };
    }
}

public class SubContainer
{
    public bool Active { get; set; }
    public string[] Items { get; set; }
}