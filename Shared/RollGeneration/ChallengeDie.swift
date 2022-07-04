import SwiftUI

public class ChallengeDie: ObservableObject {
    @Published public var result: ChallengeDieResult?
    var rollGenerator: RollGenerator
    public init(rollGenerator: RollGenerator) {
        self.rollGenerator = rollGenerator
    }
    
    public func roll() {
        result = ChallengeDieResult.fromInt(rollGenerator.next(dieSides: 6))
    }
}
