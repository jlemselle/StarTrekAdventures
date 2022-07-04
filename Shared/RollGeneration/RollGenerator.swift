public protocol RollGenerator {
    func next(dieSides: Int) -> Int
}
