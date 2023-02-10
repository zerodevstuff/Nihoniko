//
//  AnimeMangaDetailsLinkButtonView.swift
//  Nihoniko
//
//  Created by Paulo César on 05/02/23.
//

import SwiftUI

struct AnimeMangaDetailsLinkButtonView: View {
    let url: String
    let icon: String
    let color: String
    
    var body: some View {
        Button(action: {
            UIApplication.shared.open(URL(string: url)!)
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .frame(maxWidth: 50, maxHeight: 50)
                    .foregroundColor(Color(color))
                    .zIndex(-10)
                AsyncImage(url: URL(string: icon)!, content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 35, maxHeight: 35)
                        .foregroundColor(.black)
                }, placeholder: {})
            }
        }
        
    }
}

struct AnimeMangaDetailsLinkButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AnimeMangaDetailsLinkButtonView(
            url: "https://www.crunchyroll.com/series/G0XHWM5N2/all-saints-street",
            icon: "https://s4.anilist.co/file/anilistcdn/link/icon/5-AWN2pVlluCOO.png",
            color: "#F88B24")
    }
}
