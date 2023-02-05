//
//  AnimeMangaDetailsHeaderView.swift
//  Nihoniko
//
//  Created by Paulo César on 04/02/23.
//

import SwiftUI

struct AnimeMangaDetailsHeaderView: View {
    let cover: URL
    let background: URL
    let mainTitle: String
    let subTitle: String
    
    var body: some View {
        ZStack {
            HStack {
                AsyncImage(url: cover, content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 130, maxHeight: 180)
                        .cornerRadius(5, corners: [.topLeft, .bottomLeft])
                }, placeholder: {
                    
                })
                
                VStack {
                    Text(mainTitle)
                        .font(.custom(FontName.Motiva_Bold.rawValue, size: 40))
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: 225)
                        .foregroundColor(.white)
                    Text(subTitle)
                        .font(.custom(FontName.Motiva_Regular.rawValue, size: 16))
                        .frame(maxWidth: 225)
                        .foregroundColor(.white)
                }
            }
            AsyncImage(url: background, content: { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .blur(radius: 10)
                    .opacity(0.5)
                    .frame(maxWidth: 390, maxHeight: 180)
                    
            }, placeholder: {
                
            })
            .zIndex(-1000)
        }
        
    }
}

struct AnimeMangaDetailsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AnimeMangaDetailsHeaderView(
            cover: URL(string: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx114555-2Srjv4lqeGYA.png")!,
            background: URL(string: "https://s4.anilist.co/file/anilistcdn/media/anime/banner/114555-cnSuKDrJhQDf.jpg")!,
            mainTitle: "All Street Saints",
            subTitle: "Wan Sheng Jie")
    }
}
