//
//  ContentView.swift
//  Shared
//
//  Created by Primoz Cuvan on 17/02/2022.
//

import SwiftUI

struct ContactsView: View {
    
    let contacts: [Contact] = AppData.contacts
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts) { contact in
                    contactRow(contact)
                }
            }
            .navigationTitle("Contacts")
        }
    }
    
    // MARK: - View Components
    
    private func contactRow(_ contact: Contact) -> some View {
        VStack(alignment: .leading) {
            Text(contact.name)
                .fontWeight(.semibold)
            
            Text(contact.phoneNumber)
                .font(.footnote)
                .foregroundColor(.gray)
            
            Text(contact.location)
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
