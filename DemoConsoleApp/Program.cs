using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;


namespace DemoConsoleApp;
using static DateTime;
using static Environment;
internal partial class Program
{
    static void Main(string[] args)
    {
        IEnumerable<string[]> chunk = DateTimeFormatInfo.CurrentInfo!.MonthNames[..^1].ToList().Chunk(2);
        List<string[]> list = chunk.ToList();
        for (int index = 0; index < list.LongCount(); index++)
        {
            Console.WriteLine(index);
            foreach (var name in list[index])
            {
                Console.WriteLine($"\t{name}");
            }
        }
        Console.ReadLine();
    }
}

public static class Howdy
{
    public static string TimeOfDay() => Now.Hour switch
    {
        <= 12 => "Good Morning",
        <= 16 => "Good Afternoon",
        <= 20 => "Good Evening",
        _ => "Good Night"
    };
}

public enum Environment
{
    Development,
    Staging,
    Staging2,
    Production
}
public static class Helpers
{
    public static int IntLength(this int sender) => sender switch
        {
            < 0 => 0,
            0 => 1,
            _ => (int)Math.Floor(Math.Log10(sender)) + 1
        };

    public static string GetEnvironmentColor(Environment environment) => environment switch
        {
            Development => "Green",
            Staging => "Yellow",
            Production => "Cyan",
            _ => "Unknown"
        };
}