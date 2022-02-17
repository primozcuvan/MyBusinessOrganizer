//
//  ContactDetailsView.swift
//  MyBusinessOrganizer (iOS)
//
//  Created by Primoz Cuvan on 17/02/2022.
//

import SwiftUI

struct ContactDetailsView: View {
    
    internal let contact: Contact
    
    var body: some View {
        VStack {
            contactDetails
        }
        .navigationTitle(contact.name)
    }
    
    // MARK: - View Components
    
    private var contactDetails: some View {
        List {
            Section("Phonw Number") {
                callPhoneButton
            }
            
            Section("Address") {
                openMapButton
            }
        }
    }
    
    private var callPhoneButton: some View {
        Button {
            
        } label: {
            HStack {
                Text(contact.phoneNumber)
                
                Spacer()
                
                Image(systemName: "phone.circle.fill")
                    .renderingMode(.original)
            }
        }
    }
    
    private var openMapButton: some View {
        Button {
            
        } label: {
            HStack {
                Text(contact.location)
                
                Spacer()
                
                Image(systemName: "mappin.circle.fill")
                    .renderingMode(.original)
            }
        }
    }
    
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: AppData.contacts[0])
    }
}
