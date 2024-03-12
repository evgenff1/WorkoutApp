//
//  SettingsController.swift
//  WorkoutApp
//
//  Created by Evgeniy Fakhretdinov on 08.03.2024.
//

import UIKit

class SettingsController: WABaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = R.Strings.NavBar.settings
    }
}

extension SettingsController {
    override func setupViews() {
        super.setupViews()
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = R.Strings.NavBar.settings
    }
}
