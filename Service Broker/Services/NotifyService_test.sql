CREATE SERVICE [NotifyService_test]
AUTHORIZATION [dbo]
ON QUEUE [dbo].[NotifyQueue_test] (
  [http://schemas.microsoft.com/SQL/Notifications/PostEventNotification]
)
GO