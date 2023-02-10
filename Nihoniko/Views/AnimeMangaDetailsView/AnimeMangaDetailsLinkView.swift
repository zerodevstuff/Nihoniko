//
//  AnimeMangaDetailsLinkView.swift
//  Nihoniko
//
//  Created by Paulo César on 05/02/23.
//

import SwiftUI

struct LinkModelTemp: Identifiable {
    var id = UUID()
    var name: String
    var link: String
    var icon: String
    var color: String
}

struct AnimeMangaDetailsLinkView: View {
    var links: [LinkModelTemp]
    
    var body: some View {
        HStack(alignment: .center) {
            ForEach(links) { link in
                AnimeMangaDetailsLinkButtonView(url: link.link, icon: link.icon, color: link.color)
            }
        }
        .onAppear() {
            print(links)
        }
    }
}

struct AnimeMangaDetailsLinkView_Previews: PreviewProvider {
    static var previews: some View {
        AnimeMangaDetailsLinkView(links:
                                    [LinkModelTemp(name: "Tencent Video",
                                                   link: "https://v.qq.com/detail/a/awnia0n2erqryf3.html",
                                                   icon: "https://s4.anilist.co/file/anilistcdn/link/icon/121-BQIBl0q1Eh9w.png",
                                                   color: "#2FA3F9"),
                                    LinkModelTemp(name: "Weibo",
                                                  link: "https://www.weibo.com/u/3027361555",
                                                  icon: "https://s4.anilist.co/file/anilistcdn/link/icon/120-Q60x0hPKE19B.png",
                                                  color: "#E6162D"),
                                     LinkModelTemp(name: "CrunchyRoll",
                                         link: "https://www.crunchyroll.com/series/G0XHWM5N2/all-saints-street",
                                         icon: "https://s4.anilist.co/file/anilistcdn/link/icon/5-AWN2pVlluCOO.png",
                                         color: "#F88B24")])
    }
}
