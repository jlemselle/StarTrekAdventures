//
//  DiceRollView.swift
//  StarTrekAdventures
//
//  Created by James Emselle on 27/7/21.
//

import SwiftUI

struct DiceRollView: View {
    let roll: DiceRoll
    @Binding var division: Division
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(roll.results.reduce(0, { $0 + $1.value() }))")
                    .font(.title)
                Spacer()
                Text("\(roll.results.filter { $0 == .effect }.count) effect(s)")
                    .font(.subheadline)
            }.padding(.leading)
            .padding(.trailing)
            .padding(.top)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(roll.results, id: \.self) { result in
                        DieView(result: result, division: $division)
                            .frame(width: 40, height: 40)
                    }
                }.padding(.leading)
                .padding(.trailing)
                .padding(.top, 2)
                .padding(.bottom)
            }
        }
    }
}

struct DiceRollView_Previews: PreviewProvider {
    static var previews: some View {
        DiceRollView(roll: DiceRoll(results: [.blank, .effect, .one, .two]), division: .constant(.command))
    }
}
