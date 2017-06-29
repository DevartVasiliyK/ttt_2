CREATE BROKER PRIORITY [test_Br_pr]
FOR CONVERSATION
SET (
     CONTRACT_NAME = [//Documenter_Contract/ExpenseSubmission],
     PRIORITY_LEVEL = 2
);
GO