﻿using LibraryManagementSystemWF.Dashboard.AdminDashboardControl;
using LibraryManagementSystemWF.interfaces;
using LibraryManagementSystemWF.models;
using LibraryManagementSystemWF.views.Dashboard.Librarian;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LibraryManagementSystemWF.views.components
{
    public partial class BookContainer : UserControl
    {
        private Book book = new();
        private bool isPreview;
        private Form? form;
        private ICustomForm? customForm;

        public BookContainer(Book book, bool isPreview = false, Form? form = null, ICustomForm? customForm = null)
        {
            InitializeComponent();

            this.isPreview = isPreview;
            this.book = book;
            new ToolTip().SetToolTip(titleLbl, book.Title);
            titleLbl.Text = book.Title;
            authorLbl.Text = book.Author;

            this.form = form;
            this.customForm = customForm;

            if (File.Exists(book.Cover)) pictureBox1.Image = Image.FromFile(book.Cover);
        }

        private void titleLbl_Click(object sender, EventArgs e)
        {
            if (!isPreview)
            {
                if (this.form != null) this.form.Enabled = false;
                new BookInformation(this.book, this.form, this.customForm).Show();
            }
        }

        private void titleLbl_MouseEnter(object sender, EventArgs e)
        {
            if (!isPreview) titleLbl.ForeColor = Color.Gray;
        }

        private void titleLbl_MouseLeave(object sender, EventArgs e)
        {
            if (!isPreview) titleLbl.ForeColor = Color.Black;
        }
    }
}
