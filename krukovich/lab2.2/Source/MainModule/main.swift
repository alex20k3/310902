import Foundation
import ValidationModule
import LogarithmModule


let number = 100.0


if Validation.validatePositiveNumber(number) {
    
    let lnResult = Logarithm.calculate(number, using: Logarithm.naturalLog)
    print("Натуральный логарифм числа \(number): \(lnResult)")

    let log10Result = Logarithm.calculate(number, using: Logarithm.decimalLog)
    print("Десятичный логарифм числа \(number): \(log10Result)")
} else {
    print("Ошибка: логарифм определяется только для положительных чисел.")
}
