﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using ConfigurationLibrary.Classes;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using System;
using System.Collections.Generic;
using WebApplication1.Data.Configurations;
using WebApplication1.Models;
#nullable disable

namespace WebApplication1.Data
{
    public partial class OedContext : DbContext
    {
        public OedContext()
        {
        }

        public OedContext(DbContextOptions<OedContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Categories> Categories { get; set; }
        public virtual DbSet<Taxpayer> Taxpayer { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {

                optionsBuilder.UseSqlServer(ConfigurationHelper.ConnectionString());
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new Configurations.CategoriesConfiguration());
            modelBuilder.ApplyConfiguration(new Configurations.TaxpayerConfiguration());

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
