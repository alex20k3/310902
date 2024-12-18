import Foundation
import NotificationModule
import NotificationProtocolsModule
import DeliveryMethodsModule

let notificationSenders: [NotificationSender] = [
    EmailDelivery(),
    SmsDelivery(),
    PushNotificationDelivery()
]

let notificationManager = NotificationSenderManager()

for sender in notificationSenders {
    notificationManager.addDeliveryMethod(sender)
}

let message = "Уведомление: Важная информация!"
let recipient = "example@example.com"

notificationManager.sendAllNotifications(message: message, to: recipient)
