import SwiftUI

struct DiceRoll : Hashable {
    var results: [ChallengeDieResult]
}

struct ContentView: View {
    @StateObject var die: ChallengeDie = ChallengeDie(rollGenerator: RandomRollGenerator())
    @State var noOfDice: Int
    @State var division: Division
    @State var diceRolls: [DiceRoll] = []
    var body: some View {
        VStack {
            DiceChooserView(noOfDice: $noOfDice, division: $division) {
                var results: [ChallengeDieResult] = []
                for _ in 1...noOfDice {
                    die.roll()
                    results.append(die.result ?? .blank)
                }
                diceRolls.append(DiceRoll(results: results))
            }
            ScrollView {
                ForEach(diceRolls.indices.reversed(), id: \.self) { index in
                    DiceRollView(roll: diceRolls[index], division: $division)
                    Divider()
                }
            }
            Spacer()
        }
        .animation(.default)
    }
    
    func printChallengeDieResult(result: ChallengeDieResult?) -> String {
        if let r = result {
            return r.toString()
        }
        return ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(noOfDice: 2, division: .command, diceRolls: [
        ]).preferredColorScheme(.dark)
    }
    static var previews2: some View {
        ContentView(noOfDice: 2, division: .command, diceRolls: [
            DiceRoll(results: [.blank, .effect, .one, .two]),
            DiceRoll(results: [.blank, .effect, .one, .two]),
            DiceRoll(results: [.blank, .effect, .one, .two])
        ]).preferredColorScheme(.dark)
    }
}
