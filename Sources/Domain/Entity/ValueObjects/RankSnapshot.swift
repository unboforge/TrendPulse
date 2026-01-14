public struct RankSnapshot: Equatable, Sendable {
    public let current: Int
    public let previous: Int
    public let change: Int  // previous - current (양수=상승)

    public init(current: Int, previous: Int, change: Int) {
        self.current = current
        self.previous = previous
        self.change = change
    }
}
