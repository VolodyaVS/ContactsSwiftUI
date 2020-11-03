//
//  ContentView.swift
//  Contacts
//
//  Created by Vladimir Stepanchikov on 02.11.2020.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Person.getContacts()
    
    var body: some View {
        TabView {
            ContactList(contacts: contacts)
                .tabItem {
                    Image(systemName: SystemImages.contacts.rawValue)
                    Text("Contacts")
            }
            
            SectionsContacts(contacts: contacts)
                .tabItem {
                    Image(systemName: SystemImages.phone.rawValue)
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
