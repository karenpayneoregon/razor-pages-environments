namespace WebApplication1.Classes;

public static class Locations
{
    public static List<string> GetLocations()
    {
        // e.g. Put a database call here

        return new List<string>()
        {
            "Washington",
            "Oregon",
            "California",
            "Florida",
            "Ohio"
        };
    }
}