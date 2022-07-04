//
//  ChallengeDieResultView.swift
//  StarTrekAdventures
//
//  Created by James Emselle on 27/7/21.
//

import SwiftUI

struct ChallengeDieResultView: View {
    let result: ChallengeDieResult
    var body: some View {
        switch result {
        case .blank:
            Text("").transition(.slide)
        case .effect:
            DieFaceView(face: "insignia").transition(.slide)
        case .one:
            DieFaceView(face: "one").transition(.slide)
        case .two:
            DieFaceView(face: "two").transition(.slide)
        }
    }
}

struct ChallengeDieResultView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeDieResultView(result: .effect)
    }
}
