//
//  Insignia.swift
//  StarTrekAdventures
//
//  Created by James Emselle on 27/7/21.
//

import SwiftUI

struct DieFaceView: View {
    @Environment(\.colorScheme) var colorScheme
    var face: String
    init(face: String) {
        self.face = face;
    }
    
    var body: some View {
        invertIfDark(image: Image(face)
            .resizable()
            .frame(width: 20, height: 20))
    }
    
    func invertIfDark<T: View>(image: T) -> some View {
        if (colorScheme == .dark) {
            return AnyView(image.colorInvert())
        } else {
            return AnyView(image)
        }
    }
}

struct Insignia_Previews: PreviewProvider {
    static var previews: some View {
        DieFaceView(face: "insignia")
    }
}
