﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace LibraryManagementSystemWF.services
{
    internal class SetupService
    {
        // NOTE: This class will initialize the database when the program first loads
        public static async Task<bool> Ready()
        {
            try
            {
                await SeederService.CreateDatabase();
                
                if (await SeederService.CreateInitialTables())
                {
                    await SeederService.SeedUsers();
                    await SeederService.SeedBooks();
                }

                return true;
            } catch { return false; }
        }
    }
}
