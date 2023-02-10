//
//  ContentView.swift
//  Nihoniko
//
//  Created by Paulo César on 04/02/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
//        NavigationView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
//                    } label: {
//                        Text(item.timestamp!, formatter: itemFormatter)
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//            Text("Select an item")
//        }
//        AnimeMangaDetailsLinkButtonView(url: "https://www.crunchyroll.com/series/G0XHWM5N2/all-saints-street", icon: "https://s4.anilist.co/file/anilistcdn/link/icon/5-AWN2pVlluCOO.png", color: "#F88B24")
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

    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
