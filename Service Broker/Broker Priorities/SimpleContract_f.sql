CREATE BROKER PRIORITY [SimpleContract_f]
FOR CONVERSATION
SET (
     CONTRACT_NAME = [//Documenter_DB/Expenses/ExpenseSubmission],
     PRIORITY_LEVEL = 8
);
GO