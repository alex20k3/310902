import Foundation

public protocol NotificationSender {
    func sendNotification(message: String, to recipient: String)
}
