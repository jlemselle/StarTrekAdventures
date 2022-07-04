//
//  DiceChooser.swift
//  StarTrekAdventures
//
//  Created by James Emselle on 27/7/21.
//

import SwiftUI

struct DiceChooserView: View {
    @Binding var noOfDice: Int
    @Binding var division: Division
    var roll: () -> Void
    var body: some View {
        VStack {
            Picker("Dice style", selection: $division) {
                Text("Command")
                    .tag(Division.command)
                Text("Operations")
                    .tag(Division.operations)
                Text("Science")
                    .tag(Division.science)
            }.pickerStyle(SegmentedPickerStyle())
            HStack {
                Picker("Number of dice", selection: $noOfDice) {
                    Text("1")
                        .tag(1)
                    Text("2")
                        .tag(2)
                    Text("3")
                        .tag(3)
                    Text("4")
                        .tag(4)
                    Text("5")
                        .tag(5)
                    Text("6")
                        .tag(6)
                }.pickerStyle(SegmentedPickerStyle())
                Button(action: roll, label: { DieFaceView(face: "insignia").padding() })
                    
            }
        }
    }
}

struct DiceChooser_Previews: PreviewProvider {
    static var previews: some View {
        DiceChooserView(noOfDice: .constant(2), division: .constant(.command), roll:{})
    }
}
