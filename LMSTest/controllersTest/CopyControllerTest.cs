﻿using LibraryManagementSystemWF.controllers;
using LibraryManagementSystemWF.models;

namespace LMSTest
{
    [TestClass]
    public class CopyControllerTest
    {
        [TestMethod]
        public void Should_Create_Copies()
        {
            AuthController.SignIn("admin", "password");
            ControllerModifyData<Copy> res = CopyController.CreateCopies(
                "A5BDF027-CE17-4F76-B95A-82D2FB7640E8",
                12
                );

            Assert.IsTrue(res.IsSuccess);
        }

        [TestMethod]
        public void Should_Get_Copy_By_Id()
        {
            ControllerModifyData<Copy> res = CopyController.GetCopyById("4F19038B-EEF3-4940-8505-00406EF8BBC9");

            Assert.IsTrue(res.IsSuccess);
        }

        [TestMethod]
        public void Should_Get_All_Copies()
        {
            ControllerAccessData<Copy> res = CopyController.GetAllCopies();

            Assert.IsTrue(res.Results.Count > 0);
            Assert.IsTrue(res.IsSuccess);
        }

        [TestMethod]
        public void Should_Remove_By_Id()
        {
            AuthController.SignIn("admin", "password");
            ControllerActionData res = CopyController.RemoveById("4F19038B-EEF3-4940-8505-00406EF8BBC9");

            Assert.IsTrue(res.IsSuccess);
        }

    }
}