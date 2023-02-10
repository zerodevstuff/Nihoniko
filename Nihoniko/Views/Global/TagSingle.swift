//
//  TagSingle.swift
//  Nihoniko
//
//  Created by Paulo César on 10/02/23.
//

import SwiftUI

struct TagSingle: View {
    let name: String
    
    var body: some View {
        ZStack(alignment: .center) {
            Text(name.uppercased())
                .font(.custom(FontName.Motiva_Bold.rawValue, size: 14))
                .padding(EdgeInsets(top: 2.5, leading: 5, bottom: 2.5, trailing: 5))
                .background() {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.white)
                }
                .foregroundColor(.black)
            
        }
        
    }
}

struct TagSingle_Previews: PreviewProvider {
    static var previews: some View {
        TagSingle(name: "Slice of Life")
    }
}
