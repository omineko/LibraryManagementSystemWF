﻿using LibraryManagementSystemWF.dao;
using LibraryManagementSystemWF.models;
using LibraryManagementSystemWF.utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace LibraryManagementSystemWF.controllers
{
    internal class LoanController : BaseController
    {
        public static async Task<ControllerModifyData<Loan>> BorrowBook(string userId, string bookId, DateTime dueDate)
        {
            ControllerModifyData<Loan> returnData = new()
            {
                Result = default
            };
            Dictionary<string, string> errors = new();
            bool isSuccess = false;

            // is not admin
            if (!await AuthGuard.IsAdmin())
            {
                errors.Add("permission", "Forbidden");
                returnData.Errors = errors;
                returnData.IsSuccess = false;

                return returnData;
            }

            // validation
            if (string.IsNullOrWhiteSpace(userId)) errors.Add("userId", "ID is invalid");
            if (string.IsNullOrWhiteSpace(bookId)) errors.Add("bookId", "ID is invalid");
            if (!await Validator.IsCopyAvailable(bookId)) errors.Add("bookId", "No available books");

            if (errors.Count == 0)
            {
                LoanDAO loanDao = new();
                ReturnResult<Loan> result = await loanDao.Create(new Loan
                {
                    Copy = new Copy
                    {
                        Book =
                        {
                            ID = new Guid(bookId)
                        }
                    },
                    User = new User
                    {
                        ID = new Guid(userId)
                    },
                    DateBorrowed = DateTime.Now,
                    DateDue = dueDate
                });

                isSuccess = result.IsSuccess;
                returnData.Result = result.Result;
            }

            returnData.Errors = errors;
            returnData.IsSuccess = isSuccess;
            return returnData;
        }
    
        public static async Task<ControllerModifyData<Loan>> ReturnBook(string userId, string loanId)
        {
            ControllerModifyData<Loan> returnData = new()
            {
                Result = default
            };
            Dictionary<string, string> errors = new();
            bool isSuccess = false;

            // is not admin
            if (!await AuthGuard.IsAdmin())
            {
                errors.Add("permission", "Forbidden");
                returnData.Errors = errors;
                returnData.IsSuccess = false;

                return returnData;
            }

            // validation
            if (string.IsNullOrWhiteSpace(userId)) errors.Add("userId", "ID is invalid");
            if (string.IsNullOrWhiteSpace(loanId)) errors.Add("loanId", "ID is invalid");

            // update if theres no error
            if (errors.Count == 0)
            {
                LoanDAO loanDao = new();

                // proceed if book is found
                ReturnResult<Loan> result = await loanDao.Update(new Loan
                {
                    ID = new Guid(loanId),
                    User = new User
                    {
                        ID = new Guid(userId)
                    }
                });

                isSuccess = result.IsSuccess;
                if (isSuccess && result.Result != null)
                {
                    returnData.Result = result.Result;
                }
            }

            returnData.Errors = errors;
            returnData.IsSuccess = isSuccess;
            return returnData;
        }

        public static async Task<ControllerModifyData<Loan>> GetLoanById(int id)
        {
            ControllerModifyData<Loan> returnData = new()
            {
                Result = default
            };
            Dictionary<string, string> errors = new();
            bool isSuccess = false;

            // validate fields
            if (id < 0) errors.Add("id", "ID is invalid");

            if (errors.Count == 0)
            {
                LoanDAO loanDao = new();
                ReturnResult<Loan> result = await loanDao.GetById(id.ToString());

                isSuccess = result.IsSuccess;
                if (isSuccess && result.Result != null)
                {
                    returnData.Result = result.Result;
                }
            }

            returnData.Errors = errors;
            returnData.IsSuccess = isSuccess;
            return returnData;
        }

        public static async Task<ControllerAccessData<Loan>> GetAllLoans(string userId, int page = 1)
        {
            ControllerAccessData<Loan> returnData = new()
            {
                Results = new List<Loan>(),
                rowCount = 0
            };
            Dictionary<string, string> errors = new();
            bool isSuccess = false;

            // validate
            if (string.IsNullOrWhiteSpace(userId)) errors.Add("userId", "ID is invalid");
            if (page <= 0) errors.Add("page", "Invalid page");

            if (errors.Count == 0)
            {
                LoanDAO loanDao = new();
                ReturnResultArr<Loan> result = await loanDao.GetAllLoans(page, new Loan
                {
                    User = new User
                    {
                        ID = new Guid(userId)
                    }
                });

                isSuccess = result.IsSuccess;
                returnData.Results = result.Results;
                returnData.rowCount = result.rowCount;
            }

            returnData.Errors = errors;
            returnData.IsSuccess = isSuccess;
            return returnData;
        }
    }
}
