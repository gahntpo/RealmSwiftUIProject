//
//  ContentView.swift
//  RealmProject
//
//  Created by Karin Prater on 12.03.22.
//

import SwiftUI
import RealmSwift
import Network

struct ContentView: View {
    
    @ObservedResults(Group.self) var groups
    
    var body: some View {
        
        if let group = groups.first {
            ItemListView(group: group)
        } else {
            ProgressView()
                .onAppear {
                    $groups.append(Group())
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
