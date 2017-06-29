CREATE SERVICE [NotifyService_12]
AUTHORIZATION [dbo]
ON QUEUE [dbo].[NotifyQueue] (
  [http://schemas.microsoft.com/SQL/Notifications/PostEventNotification]
)
GO