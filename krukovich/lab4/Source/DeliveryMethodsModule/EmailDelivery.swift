import Foundation
import NotificationProtocolsModule

public class EmailDelivery: NotificationSender {
    public init() {}

    public func sendNotification(message: String, to recipient: String) {
        print("Отправка уведомления по email: \(message) на адрес \(recipient)")
    }
}
