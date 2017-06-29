CREATE CONTRACT [//Documenter_Contract/ExpenseSubmission]
AUTHORIZATION [dbo] (
  [//Documenter_Contract] SENT BY INITIATOR,
  [//Documenter_Contract/ExpenseApprovedOrDenied] SENT BY TARGET,
  [//Documenter_Contract/ExpenseReimbursed] SENT BY TARGET
)
GO