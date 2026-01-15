public struct MentionsSnapshot: Equatable, Sendable {
    public let current: Int
    public let previous: Int
    public let changeRate: Double

    public init(current: Int, previous: Int, changeRate: Double) {
        self.current = current
        self.previous = previous
        self.changeRate = changeRate
    }
}
