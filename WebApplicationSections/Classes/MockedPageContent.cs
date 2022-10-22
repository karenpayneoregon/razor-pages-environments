using WebApplicationSections.Models;

namespace WebApplicationSections.Classes;

public class MockedPageContent
{
    /// <summary>
    /// Simulate data coming from a data source
    /// </summary>
    /// <returns></returns>
    public static List<PageContent> PageContents() =>
        new()
        {
            new PageContent()
            {
                Title = "Apollo",
                PageName = "Index",
                Lines = new []
                {
                    "When we return this rock or some of the others like it to Houston, we'd like to share a piece of this rock with so many of the countries throughout the world. We hope that this will be a symbol of what our feelings are, what the feelings of the Apollo Program are, and a symbol of mankind that we can live in peace and harmony in the future."
                }
            },
            new PageContent()
            {
                Title = "Pale blue dot",
                PageName = "About",
                Lines = new[]
                {
                    "Look again at that dot. That's here. That's home. That's us. On it everyone you love, everyone you know, everyone you ever heard of, every human being who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every \"superstar,\" every \"supreme leader,\" every saint and sinner in the history of our species lived there--on a mote of dust suspended in a sunbeam."
                }
            },
            new PageContent()
            {
                Title = "Contacts",
                PageName = "Contacts",
                Lines = new[]
                {
                    "Here we are using Entity Framework Core to populate a single Bootstrap card which uses the exact same code pattern as the other non-data pages."
                }
            },
        };
}