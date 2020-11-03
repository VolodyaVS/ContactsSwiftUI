//
//  SectionsContacts.swift
//  Contacts
//
//  Created by Vladimir Stepanchikov on 03.11.2020.
//

import SwiftUI

struct SectionsContacts: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts) { contact in
                    Section(header: Text("\(contact.fullName)")) {
                        RowView(
                            image: SystemImages.phone.rawValue,
                            contact: contact.phone
                        )
                        RowView(
                            image: SystemImages.mail.rawValue,
                            contact: contact.mail
                        )
                    }
                }
            }
        }
    }
    
}

struct SectionsContacts_Previews: PreviewProvider {
    static var previews: some View {
        SectionsContacts(contacts: Person.getContacts())
    }
}
