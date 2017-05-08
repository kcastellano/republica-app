//
//  Session.swift
//  RepublicaApp
//
//  Created by Khaterine Castellano on 5/8/17.
//  Copyright © 2017 Kate Castellano. All rights reserved.
//

import Foundation

enum SessionType : String {
    case workshop = "Workshop"
    case talk = "Talk"
}

enum SessionLevel: String {
    case beginner = "Beginner"
    case medium = "Mid-Level"
    case advanced = "Advanced"
}

class Session {
    
    //MARK: Properties
    
    var name: String
    var shortThesis: String
    var language: String
    var sessionType: SessionType
    var sessionLevel: SessionLevel
    var date: Date
    var speaker: Speaker
    
    
    //MARK: Initialization
    
    init?(name: String, shortThesis: String, language: String, sessionType: SessionType, sessionLevel: SessionLevel, date: Date, speaker: Speaker) {
        
        // Initialize properties
        
        self.name = name
        self.shortThesis = shortThesis
        self.language = language
        self.sessionType = sessionType
        self.sessionLevel = sessionLevel
        self.date = date
        self.speaker = speaker
        
    }
    
}
