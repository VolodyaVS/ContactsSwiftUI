//
//  ContactDetails.swift
//  Contacts
//
//  Created by Vladimir Stepanchikov on 03.11.2020.
//

import SwiftUI

struct ContactDetails: View {
    
    let person: Person
    
    var body: some View {
        Form {
            HStack {
                Spacer()
                Image(systemName: SystemImages.avatar.rawValue)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                Spacer()
            }
            RowView(image: SystemImages.phone.rawValue, contact: person.phone)
            RowView(image: SystemImages.mail.rawValue, contact: person.mail)
        }
        .navigationBarTitle(person.fullName)
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(person: Person.getContacts().first!)
    }
}
