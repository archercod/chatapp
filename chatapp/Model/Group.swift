//
//  Group.swift
//  chatapp
//
//  Created by Marcin Pietrzak on 01/02/2018.
//  Copyright © 2018 Marcin Pietrzak. All rights reserved.
//

import Foundation
import Firebase

class Group {
    
    private var _groupTitle: String
    private var _groupDescription: String
    private var _key: String
    private var _memberCount: Int
    private var _members: [String]
    
    var groupTitle: String {
        return _groupTitle
    }
    
    var groupDescription: String {
        return _groupDescription
    }
    
    var key: String {
        return _key
    }
    
    var memberCount: Int {
        return _memberCount
    }
    
    var members: [String] {
        return _members
    }
    
    init(titile: String, description: String, key: String, members: [String], memberCount: Int) {
        self._groupTitle = titile
        self._groupDescription = description
        self._key = key
        self._members = members
        self._memberCount = memberCount
    }
}
