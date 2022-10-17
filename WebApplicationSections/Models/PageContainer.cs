namespace WebApplicationSections.Models;

/// <summary>
/// For demoing passing different types of information not in a page model
/// </summary>
public class PageContainer
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public DateOnly DateOnly { get; set; }
    public CurrentPage Page { get; set; }
}