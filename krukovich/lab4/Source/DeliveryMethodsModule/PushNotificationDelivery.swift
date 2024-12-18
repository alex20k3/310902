import Foundation
import NotificationProtocolsModule

public class PushNotificationDelivery: NotificationSender {
    public init() {}

    public func sendNotification(message: String, to recipient: String) {
        print("Отправка push-уведомления: \(message) на устройство \(recipient)")
    }
}
