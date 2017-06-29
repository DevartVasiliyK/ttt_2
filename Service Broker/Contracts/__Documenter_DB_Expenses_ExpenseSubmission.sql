CREATE CONTRACT [//Documenter_DB/Expenses/ExpenseSubmission]
AUTHORIZATION [dbo] (
  [//Documenter_DB/Expenses/ExpenseApprovedOrDenied] SENT BY TARGET,
  [//Documenter_DB/Expenses/ExpenseReimbursed] SENT BY TARGET,
  [//Documenter_DB/Expenses/SubmitExpense] SENT BY INITIATOR
)
GO