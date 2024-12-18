import Foundation
import NotificationProtocolsModule

public class SmsDelivery: NotificationSender {
    public init() {}

    public func sendNotification(message: String, to recipient: String) {
        print("Отправка уведомления по SMS: \(message) на номер \(recipient)")
    }
}
