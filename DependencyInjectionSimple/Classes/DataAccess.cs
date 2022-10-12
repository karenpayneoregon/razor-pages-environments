using DependencyInjectionSimple.Data;
using Microsoft.EntityFrameworkCore.ChangeTracking;

namespace DependencyInjectionSimple.Classes;

public class DataAccess
{
    private readonly PizzaContext _context;

    public DataAccess(PizzaContext context)
    {
        _context = context;
        _context.ChangeTracker.StateChanged += ChangeTrackerOnStateChanged;
    }

    private void ChangeTrackerOnStateChanged(object sender, EntityStateChangedEventArgs e)
    { // set breakpoint here
        
    }

    /// <summary>
    /// Simple read example, logging is disabled in appsettings.json for EF Core
    /// </summary>
    public async Task Execute(string[] args)
    {

        var customers = await _context.Customers
            .Include(c => c.Orders)
            .ToListAsync();

        Console.WriteLine();

        foreach (var customer in customers)
        {
            AnsiConsole.MarkupLine($"[cyan]{customer}[/] [yellow]{customer.Orders.Count}[/]");
            customer.FirstName += " Mary";
            _context.Entry(customer).State = EntityState.Modified;
        }

        Console.WriteLine();
        await Task.CompletedTask;
    }
    
}