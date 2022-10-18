using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using WebApplicationSections.Data;
using WebApplicationSections.Models;

namespace WebApplicationSections.Pages
{
    public class ContactsModel : PageModel
    {
        private readonly NorthContext _context;

        public ContactsModel(NorthContext context)
        {
            _context = context;
        }

        public IList<Contacts> Contacts { get;set; } = default!;

        public async Task OnGetAsync()
        {
            if (_context.Contacts != null)
            {
                Contacts = await _context.Contacts
                .Include(c => c.ContactTypeNavigation).ToListAsync();
            }
        }
    }
}
