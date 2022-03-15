//
//  ItemDetailView.swift
//  RealmProject
//
//  Created by Karin Prater on 12.03.22.
//

import SwiftUI
import RealmSwift

struct ItemDetailView: View {
    
    // @ObservedObject // @Binding
    @ObservedRealmObject var item: Item
    
//    @Environment(\.realm) var realm
//    @Environment(\.realmConfiguration) var conf
//
    var body: some View {
        VStack(alignment: .leading) {
            Text("Enter a new name:")
            
            TextField("New name", text: $item.name)
                .textFieldStyle(.roundedBorder)
            
                .navigationBarTitle(item.name)
                .navigationBarItems(trailing: Toggle(isOn: $item.isFavorite) {
                    Image(systemName: item.isFavorite ? "heart.fill" : "heart")
                })
            
            Button {
                if let newItem = item.thaw(),
                   let realm = newItem.realm {
                    
                    try? realm.write {
                        realm.delete(newItem)
                    }
                }
                
            } label: {
                Text("delete")
            }
            .padding()

        }
        .padding()
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetailView(item: Item.previewExample())
        }
    }
}
