//
//  ViewController.swift
//  RepublicaApp
//
//  Created by Khaterine Castellano on 5/8/17.
//  Copyright © 2017 Kate Castellano. All rights reserved.
//

import UIKit

class SessionDetailViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var speakerNameLabel: UILabel!
    @IBOutlet weak var speakerOcupationLabel: UILabel!
    
    @IBOutlet weak var sessionNameLabel: UILabel!
    @IBOutlet weak var sessionShortThesisTextView: UITextView!
    @IBOutlet weak var sessionLanguageLabel: UILabel!
    @IBOutlet weak var sessionLevelLabel: UILabel!
    @IBOutlet weak var sessionTypeLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var selectedSession: Session?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSessionInformation()
    }
    
    func setSessionInformation() {
        guard let selectedSession = self.selectedSession else {
            return
        }
            
        self.sessionNameLabel.text = selectedSession.name
        self.sessionShortThesisTextView.text = selectedSession.shortThesis
        self.sessionLanguageLabel.text = selectedSession.language
        self.sessionLevelLabel.text = selectedSession.sessionLevel.rawValue
        self.sessionTypeLabel.text = selectedSession.sessionType.rawValue
        
        self.photoImageView.image = selectedSession.speaker.photo
        self.speakerNameLabel.text = selectedSession.speaker.name
        self.speakerOcupationLabel.text = selectedSession.speaker.ocupation
        
        let sessionLevel = selectedSession.sessionLevel
        
        switch sessionLevel {
        case .beginner:
            self.backgroundImageView.image = UIImage(named: "crimson_tide")
        case .medium:
            self.backgroundImageView.image = UIImage(named: "dance_forget")
        case .advanced:
            self.backgroundImageView.image = UIImage(named: "emerald_water")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

