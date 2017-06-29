CREATE SERVICE [NotifyService_14]
AUTHORIZATION [dbo]
ON QUEUE [dbo].[NotifyQueue_13] (
  [http://schemas.microsoft.com/SQL/Notifications/PostEventNotification]
)
GO