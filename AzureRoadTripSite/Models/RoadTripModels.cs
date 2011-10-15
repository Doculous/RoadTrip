using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace AzureRoadTripSite.Models
{
    public class Stage
    {
        public int ID { get; set; }
        public string StartLocation { get; set; }
        public string StopLocation { get; set; }
        public string Comments { get; set; }

    }

    public class RoadTripContext : DbContext
    {
        public DbSet<Stage> Stages { get; set; }
    }

}