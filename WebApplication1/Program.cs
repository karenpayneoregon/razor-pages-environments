using ConfigurationLibrary.Classes;
using Microsoft.EntityFrameworkCore;
using WebApplication1.Data;

namespace WebApplication1
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            builder.Services.AddRazorPages();

            /*
             * Karen note
             * This is required when CSS Isolation is used other than Development environment
             */
            builder.WebHost.UseStaticWebAssets();
            builder.Services.AddDbContext<OedContext>(options =>
                options.UseSqlServer(ConfigurationHelper.ConnectionString()));
            var app = builder.Build();


            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Error");
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();

            app.MapRazorPages();

            app.Run();
        }
    }
}