CREATE SERVICE [NotifyService]
AUTHORIZATION [dbo]
ON QUEUE [dbo].[NotifyQueue] (
  [http://schemas.microsoft.com/SQL/Notifications/PostEventNotification]
)
GO