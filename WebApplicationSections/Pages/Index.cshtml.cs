using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using WebApplicationSections.Data;

namespace WebApplicationSections.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;

        public IndexModel(ILogger<IndexModel> logger, NorthContext context)
        {
            _logger = logger;
            //_ = context.Contacts.Count();
        }

        public void OnGet()
        {

        }
    }
}