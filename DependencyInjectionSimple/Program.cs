using ConfigurationLibrary.Classes;
using DependencyInjectionSimple.Classes;
using DependencyInjectionSimple.Data;

namespace DependencyInjectionSimple;

partial class Program
{
    public static async Task Main(string[] args)
    {
        var services = Utilities.ConfigureServices();
        // create service provider
        await using var serviceProvider = services.BuildServiceProvider();

        AnsiConsole.MarkupLine("[white on blue]Logging[/]");
        await serviceProvider.GetService<App>()!.Run(args);

        Console.WriteLine();
        Console.WriteLine();

        AnsiConsole.MarkupLine("[white on blue]Get customers using Entity Framework Core[/]");
        await serviceProvider.GetService<DataAccess>()!.Execute(args);

        SpectreConsoleHelpers.ExitPrompt();
    }


}