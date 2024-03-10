//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Evgeniy Fakhretdinov on 08.03.2024.
//

import UIKit

class SessionController: BaseController {}

extension SessionController {
    override func setupViews() {
        super.setupViews()
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: R.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: R.Strings.Session.navBarRight)
    }
}


