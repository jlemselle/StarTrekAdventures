//
//  DieView.swift
//  StarTrekAdventures
//
//  Created by James Emselle on 27/7/21.
//

import SwiftUI

struct DieView: View {
    let result: ChallengeDieResult
    @Binding var division: Division
    var body: some View {
        ChallengeDieResultView(result: result)
            .frame(width: 20, height: 20)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(divisionColor(division), lineWidth: 5)
            )
            .transition(.slide)
    }
    
    func divisionColor(_ division: Division) -> Color {
        switch division {
            case .command:
            return Color(red: 230 / 255.0, green: 85 / 255.0, blue: 83 / 255.0)
            case .operations:
                return Color(red: 252 / 255.0, green: 202 / 255.0, blue: 71 / 255.0)
            case .science:
                return Color(red: 69 / 255.0, green: 142 / 255.0, blue: 210 / 255.0)
        }
    }
}

struct DieView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DieView(result: ChallengeDieResult.effect, division: .constant(.command))
            DieView(result: ChallengeDieResult.blank, division: .constant(.command))
            DieView(result: ChallengeDieResult.one, division: .constant(.command))
        }
    }
}
