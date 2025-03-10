# Swift Short Unwrap

**Swift Short Unwrap** is a Swift Package that makes working with `Optional` values easier by providing an `unwrap()` function, similar to Kotlin's `?.let {}`.

## ✨ Features

* ✅ Works with **all** `Optional<T>` types
* ✅ Reduces the need for `if let` and `guard let` statements
* ✅ Allows using `.unwrap {}` just like `?.let {}` in Kotlin
* ✅ Supports **iOS, macOS, watchOS, and tvOS**

## 📥 Installation

### Swift Package Manager (SPM)

You can install **Swift Short Unwrap** easily using Swift Package Manager.

#### **1️⃣ Add the Package in Xcode**

1. Open **Xcode** and go to `File` → `Add Packages...`
2. Enter the repository URL:
   ```
   https://github.com/heart/swift-short-unwrap.git
   ```
3. Select the version **from: "1.0.0"**
4. Click **"Add Package"**

#### **2️⃣ Or add it to your `Package.swift`** (for Swift Packages)

```swift
dependencies: [
    .package(url: "https://github.com/heart/swift-short-unwrap.git", from: "1.0.0"),
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: ["ShortUnwrap"]
    ),
]
```

## 🚀 Usage

### **1️⃣ Unwrapping a non-nil Optional**

```swift
import ShortUnwrap

let name: String? = "Alice"
name.unwrap { print("Hello, \($0)!") }
// Output: "Hello, Alice!"
```

### **2️⃣ Using `unwrap()` to return a value**

```swift
let number: Int? = 10
let result = number.unwrap { $0 * 2 }
print(result) // Optional(20)
```

### **3️⃣ Handling nil values with `unwrap()`**

```swift
let emptyName: String? = nil
emptyName.unwrap { print("This will not print") }
// No output since emptyName is nil
```

## ✅ Comparison with Traditional Approaches

### **🔴 Traditional `if let` approach**

```swift
if let name = name {
    print("Hello, \(name)!")
}
```

### **🟢 Using `unwrap()` (Shorter & Cleaner)**

```swift
name.unwrap { print("Hello, \($0)!") }
```

**Less boilerplate, more readability!**

## ⚠️ Limitations

* `unwrap()` **only works with Optional values** (`T?`)
* It **cannot** be used on non-Optional values (`String`, `Int`, etc.) directly

## 🔥 License

This package is **Open Source** under the **MIT License**. Feel free to use, modify, and distribute it. 🚀

## 📌 Links

* **GitHub Repository:** [swift-short-unwrap](https://github.com/heart/swift-short-unwrap)

⭐ **Consider giving it a Star if you find it useful!** 😊
