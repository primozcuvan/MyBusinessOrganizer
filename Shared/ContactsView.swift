//
//  ContentView.swift
//  Shared
//
//  Created by Primoz Cuvan on 17/02/2022.
//

import SwiftUI

struct ContactsView: View {
    var body: some View {
        NavigationView {
            List {
                contactRow
                contactRow
            }
            .navigationTitle("Contacts")
        }
    }
    
    // MARK: - View Components
    
    private var contactRow: some View {
        VStack(alignment: .leading) {
            Text("John")
                .fontWeight(.semibold)
            
            Text("12345")
                .font(.footnote)
                .foregroundColor(.gray)
            
            Text("John's home location")
                .font(.footnote)
                .foregroundColor(.gray)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
