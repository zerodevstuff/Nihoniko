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
//                RoundedRectangle(cornerRadius: 10, style: .continuous)
//                Spacer()
            }
            
            configuration.content
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10, style: .continuous)
            .fill(Color("Emphasis_Sub"))) // Set your color here!!
    }
}

struct AnimeMangaDetailsInformationView: View {
    var body: some View {
        GroupBox() {
            DisclosureGroup(content: {
                ScrollView(.horizontal) {
                    HStack(spacing: 15) {
                        VStack(alignment: .leading, spacing: 5) {
                            InfoEntryView(title: "Format", description: "ONA (Chinese)")
                            InfoEntryView(title: "Episodes", description: "12")
                            InfoEntryView(title: "Episode Duration", description: "5 mins")
                        }
                        VStack(alignment: .leading, spacing: 5) {
                            InfoEntryView(title: "Status", description: "Finished")
                            InfoEntryView(title: "Start Date", description: "Apr 1, 2020")
                            InfoEntryView(title: "End Date", description: "May 27, 2020")
                        }
                        VStack(alignment: .leading, spacing: 5) {
                            InfoEntryView(title: "Average Score", description: "78%")
                            InfoEntryView(title: "Mean Score", description: "79")
                            InfoEntryView(title: "Popularity", description: "6937")
                        }
                        VStack(alignment: .leading, spacing: 5) {
                            InfoEntryView(title: "Format", description: "ONA (Chinese)")
                            InfoEntryView(title: "Episodes", description: "12")
                            InfoEntryView(title: "Episode Duration", description: "5 mins")
                        }
                    }
                    .foregroundColor(.white)
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
    //            .foregroundColor(.white)
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
