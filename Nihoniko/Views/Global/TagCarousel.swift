//
//  TagCarousel.swift
//  Nihoniko
//
//  Created by Paulo César on 10/02/23.
//

import SwiftUI

struct TagCarousel: View {
    let tags: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(tags, id: \.self) { tag in
                    TagSingle(name: tag)
                }
            }
        }
    }
}

struct TagCarousel_Previews: PreviewProvider {
    static var previews: some View {
        TagCarousel(tags: ["Comedy", "Fantasy", "Slice of Life", "Supernatural"])
    }
}
