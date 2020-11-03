//
//  RowView.swift
//  Contacts
//
//  Created by Vladimir Stepanchikov on 03.11.2020.
//

import SwiftUI

struct RowView: View {
    let image: String
    let contact: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(contact)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(image: SystemImages.mail.rawValue,
                contact: Person.getContacts().first!.mail)
    }
}
