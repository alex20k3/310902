import Foundation
import DeliveryMethodsModule
import NotificationProtocolsModule

public class NotificationSenderManager {
    private var deliveryMethods: [NotificationSender]
    
    public init() {
        self.deliveryMethods = []
    }
    
    public func addDeliveryMethod(_ method: NotificationSender) {
        deliveryMethods.append(method)
    }
    
    public func sendAllNotifications(message: String, to recipient: String) {
        for method in deliveryMethods {
            method.sendNotification(message: message, to: recipient)
        }
    }
}