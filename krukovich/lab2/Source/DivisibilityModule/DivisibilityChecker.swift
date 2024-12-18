import Foundation

public struct DivisibilityChecker {
   
    public static func isDivisibleByThree(_ number: Int) -> Bool {
        let digitSum = String(number).compactMap { $0.wholeNumberValue }.reduce(0, +)
        return digitSum % 3 == 0
    }
}
