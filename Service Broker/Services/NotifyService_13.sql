CREATE SERVICE [NotifyService_13]
AUTHORIZATION [dbo]
ON QUEUE [dbo].[NotifyQueue_14] (
  [http://schemas.microsoft.com/SQL/Notifications/PostEventNotification]
)
GO