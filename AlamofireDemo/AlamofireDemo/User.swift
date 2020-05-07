//
//  User.swift
//  AlamofireDemo
//
//  Created by Mahesh on 06/05/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import Foundation
import SwiftyJSON

class User
{
    var name =  String()
    var username = String()
    var email = String()
    var phone = String()
    
   // var address = UserAddress?()
   // var company = UserCompany?()
    
    init(userJSON:JSON) {
        self.name = userJSON["name"].stringValue
        self.username = userJSON["username"].stringValue
        self.email = userJSON["email"].stringValue
        self.phone = userJSON["phone"].stringValue
      //  self.address = UserAddress(userAddress:userJSON["comapny"])
      //  self.company = UserCompany(companyJSON:userJSON["address"])
        
    }
}

/*class UserAddress
{
    var street = String()
    var suite = String()
    var city = String()
    
    init(userAddress:JSON) {
        self.street = userAddress["street"].stringValue
        self.suite = userAddress["suite"].stringValue
        self.city = userAddress["city"].stringValue
    }
}

class UserCompany
{
    var companyname = String()
    var phrase = String()
    init(companyJSON:JSON) {
        self.companyname = companyJSON["name"].stringValue
        self.phrase = companyJSON["catchPhrase"].stringValue
    }
}
*/
