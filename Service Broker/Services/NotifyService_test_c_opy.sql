CREATE SERVICE [NotifyService_test_c/opy]
AUTHORIZATION [dbo]
ON QUEUE [dbo].[NotifyQueue_test] (
  [http://schemas.microsoft.com/SQL/Notifications/PostEventNotification]
)
GO