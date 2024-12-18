import Foundation

/// Модуль для валидации данных
public struct Validation {
    /// Проверяет, что число положительное
    /// - Parameter input: Число для проверки
    /// - Returns: true, если число больше 0, иначе false
    public static func validatePositiveNumber(_ input: Double) -> Bool {
        return input > 0
    }
}
