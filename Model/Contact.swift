//
//  Contact.swift
//  MyBusinessOrganizer (iOS)
//
//  Created by Primoz Cuvan on 17/02/2022.
//

import Foundation

struct Contact: Identifiable {
    
    internal var id: String = UUID().uuidString
    internal var name: String
    internal var phoneNumber: String
    internal var location: String
    
}
