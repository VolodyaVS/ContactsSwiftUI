//
//  DataManager.swift
//  Contacts
//
//  Created by Vladimir Stepanchikov on 02.11.2020.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = ["Volodya", "Steve", "Elon", "Michail",
                 "Tom", "Richard", "Bruce", "Sherlock"]
    let surnames = ["Stepanchikov", "Jobs", "Mask", "Shumakher",
                    "Shelby", "Richard", "Bruce", "Holmes"]
    let mails = ["1@google.com", "2@google.com", "3@google.com", "4@google.com",
                 "5@google.com", "6@google.com", "7@google.com", "8@google.com"]
    let phones = ["+71111111111", "+72222222222", "+73333333333", "+74444444444",
                  "+75555555555", "+76666666666", "+77777777777", "+78888888888"]
    
    private init() {}
    
}
