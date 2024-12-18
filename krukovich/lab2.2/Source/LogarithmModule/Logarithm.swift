import Foundation


public struct Logarithm {
    
    public typealias LogFunction = (Double) -> Double

   
    public static let naturalLog: LogFunction = { number in
        log(number) // Натуральный логарифм (основание e)
    }

    
    public static let decimalLog: LogFunction = { number in
        log10(number) // Десятичный логарифм (основание 10)
    }

    
    public static func calculate(_ number: Double, using logFunction: LogFunction) -> Double {
        return logFunction(number)
    }
}
