protocol ForegroundStyle: ShapeStyle {
    // Protocol definition
}

extension ForegroundStyle {
    // Additional methods and properties specific to ForegroundStyle
}

extension ShapeStyle where Self == ForegroundStyle {
    func customForegroundFunction() {
        // Custom functionality for ShapeStyles that are specifically ForegroundStyle
    }
}

// Usage
struct MyForegroundStyle: ForegroundStyle {
    // Implementation of ForegroundStyle
}

// Now, instances of MyForegroundStyle can access the customForegroundFunction
let style = MyForegroundStyle()
style.customForegroundFunction()
