import Foundation
import ValidationModule
import DivisibilityModule

let p = 123 // Задаем значение для проверки


if Validation.validateInput(p) {
    let isDivisible = DivisibilityChecker.isDivisibleByThree(p)
    if isDivisible {
        print("Число \(p) кратно 3.")
    } else {
        print("Число \(p) не кратно 3.")
    }
} else {
    print("Введенное значение должно быть натуральным числом больше 0.")
}
