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
                Title = "One world",
                PageName = "Index",
                Lines = new []
                {
                    "The view of the earth from the moon fascinated me - a small disk, 240,000 miles away. It was hard to think that that little thing held so many problems, so many frustrations. Raging nationalistic interests, famines, wars, pestilence don't show from that distance. I'm convinced that some wayward stranger in a space-craft, coming from some other part of the heavens, could look at earth and never know that it was inhabited at all. But the samw wayward stranger would certainly know instinctively that if the earth were inhabited, then the destinies of all who lived on it must inevitably be interwoven and joined. We are one hunk of ground, water, air, clouds, floating around in space. From out there it really is 'one world'."
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