class RandomRollGenerator : RollGenerator {
    func next(dieSides: Int) -> Int {
        Int.random(in: 1...dieSides)
    }
}
