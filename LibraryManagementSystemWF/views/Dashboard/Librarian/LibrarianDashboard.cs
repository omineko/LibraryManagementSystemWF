﻿using LibraryManagementSystemWF.controllers;
using LibraryManagementSystemWF.Dashboard.AdminDashboardControl;
using LibraryManagementSystemWF.models;
using LibraryManagementSystemWF.services;
using LibraryManagementSystemWF.views.Dashboard.AdminDashboardControl;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LibraryManagementSystemWF.views.Dashboard.Librarian
{
    public partial class LibrarianDashboard : Form
    {
        private Ctrldashboard dashboard = new();
        private Ctrlbooksrevamp books = new();
        private User? user;

        public LibrarianDashboard()
        {
            InitializeComponent();

            mainPanel.Controls.Add(dashboard);
            mainPanel.Controls.Add(books);

            books.Visible = false;
            dashboard.Visible = true;

            // initialize user info
            user = AuthService.getSignedUser();

            if (user != null)
            {
                nameLbl.Text = $"{user.Member.FirstName} {user.Member.LastName} ({user.Username})";
                emailLbl.Text = user.Member.Email;
                idLbl.Text += user.ID;
                if (File.Exists(user.ProfilePicture)) pictureBox1.Image = Image.FromFile(user.ProfilePicture);
            }
            else
            {
                nameLbl.Text = "Unavailable User";
                emailLbl.Text = "";
                idLbl.Text += "Unable top fetch";
            }

            // run clock
            // Start the timer
            System.Windows.Forms.Timer timer = new();
            timer.Interval = 1000; // 1 second
            timer.Tick += Timer_Tick;
            timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            DateTime now = DateTime.Now;
            timerLbl.Text = now.ToString("MMM. d yyyy. dddd. hh:mm:ss tt");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            books.Visible = false;
            dashboard.Visible = true;
            navLbl.Text = "Home";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            books.Visible = true;
            dashboard.Visible = false;
            navLbl.Text = "Books";

        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            AuthController.LogOut();
            new SignIn().Show();
            this.Close();
        }
    }
}