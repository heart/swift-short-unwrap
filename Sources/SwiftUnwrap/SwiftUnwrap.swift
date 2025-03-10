public extension Optional {
    func unwrap(_ block: (Wrapped) -> Void) {
        if let value = self {
            block(value)
        }
    }

    func unwrap<U>(_ transform: (Wrapped) -> U) -> U? {
        if let value = self {
            return transform(value)
        }
        return nil
    }
}
