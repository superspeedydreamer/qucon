import Foundation

extension String.StringInterpolation {
    /// Appends a date interval to a string interpolation.
    /// - Parameters:
    ///   - interval: The date interval to append.
    ///   - style: The date interval style to use for formatting. Default is `.medium`.
    mutating func appendInterpolation(interval: DateInterval, style: DateIntervalFormatter.Style = .medium) {
        let formatter = DateIntervalFormatter()
        formatter.dateStyle = style
        formatter.timeStyle = style
        if let formattedInterval = formatter.string(from: interval.start, to: interval.end) {
            appendLiteral(formattedInterval)
        } else {
            appendLiteral("Invalid Date Interval")
        }
    }
}

// Example Usage
let startDate = Date() // Current date and time
let endDate = Calendar.current.date(byAdding: .day, value: 7, to: startDate)! // One week later

let dateInterval = DateInterval(start: startDate, end: endDate)
let message = "The event lasts from \(interval: dateInterval)."

print(message)
