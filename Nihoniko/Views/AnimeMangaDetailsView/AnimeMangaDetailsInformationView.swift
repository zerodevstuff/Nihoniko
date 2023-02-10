//
//  AnimeMangaDetailsInformationView.swift
//  Nihoniko
//
//  Created by Paulo César on 04/02/23.
//

import SwiftUI

struct NihonikoGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            HStack {
                configuration.label
                    .font(.custom(FontName.Motiva_Bold.rawValue, size: 20))
                    .background(RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color("Emphasis_Main")))
//                        .fill(.red))
//                RoundedRectangle(cornerRadius: 10, style: .continuous)
//                Spacer()
            }
            
            configuration.content
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10, style: .continuous)
            .fill(Color("Emphasis_Sub"))) // Set your color here!!
//            .fill(.red))
    }
}

struct AnimeMangaDetailsInformationView: View {
    var body: some View {
        GroupBox() {
            DisclosureGroup(content: {
                ScrollView(.horizontal) {
                    Spacer()
                    HStack(alignment: .top, spacing: 15) {
                        VStack(alignment: .leading, spacing: 5) {
                            InfoEntryView(title: "Format", description: "ONA (Chinese)")
                            InfoEntryView(title: "Episodes", description: "12")
                            InfoEntryView(title: "Episode Duration", description: "5 mins")
                            InfoEntryView(title: "Status", description: "Finished")
                        }
                        VStack(alignment: .leading, spacing: 5) {
                            InfoEntryView(title: "Start Date", description: "Apr 1, 2020")
                            InfoEntryView(title: "End Date", description: "May 27, 2020")
                            InfoEntryView(title: "Average Score", description: "78%")
                            InfoEntryView(title: "Mean Score", description: "79")
                        }
                        VStack(alignment: .leading, spacing: 5) {
                            InfoEntryView(title: "Popularity", description: "6937")
                            InfoEntryView(title: "Favorites", description: "400")
                            InfoEntryView(title: "Studios", description: "HMCH")
                            InfoEntryView(title: "Producers", description: "FENZ\nTencent Penguin Pictures\nTianwen Kadokawa\nObservatory Animation")
                        }
                        VStack(alignment: .leading, spacing: 5) {
                            InfoEntryView(title: "Source", description: "Manga")
                            InfoEntryView(title: "Hashtag", description: "#万圣街 #万聖街\n#allsaintsstreet")
                            InfoEntryView(title: "Genres", description: "Comedy\nFantasy\nSlice of Life\nSupernatural")
                            
                        }
                        VStack(alignment: .leading, spacing: 5) {
                            InfoEntryView(title: "Romanji", description: "Wan Sheng Jie")
                            InfoEntryView(title: "English", description: "All Saints Street")
                            InfoEntryView(title: "Native", description: "万圣街")
                            InfoEntryView(title: "Synonyms", description: "1031 Wan Sheng Jie\n1031万圣街\n万聖街\nBansei-Gai")
                        }
                    }
                    .foregroundColor(.white)
                    Spacer()
                }
            }, label: {
                Text("More Information")
                    .font(.custom(FontName.Motiva_Bold.rawValue, size: 20))
                    .foregroundColor(.white)
            })
//            DisclosureGroup(Text("test"), content: {
//
//            })
        }
        .groupBoxStyle(NihonikoGroupBox())
    }
}

struct InfoEntryView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.custom(FontName.Motiva_Bold.rawValue, size: 14))
//                .foregroundColor(.white)
            Text(description)
                .font(.custom(FontName.Motiva_Regular.rawValue, size: 14))
                .opacity(0.5)
        }
        
    }
}

struct AnimeMangaDetailsInformationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimeMangaDetailsInformationView()
        InfoEntryView(title: "Teste", description: "Tá testado")
    }
}
