//
//  OverviewController.swift
//  WorkoutApp
//
//  Created by Evgeniy Fakhretdinov on 06.03.2024.
//

import UIKit

class OverviewController: BaseController {
    
    private let navBar = OverviewNavBar()
}

extension OverviewController {
    override func addViews() {
        super.addViews()
        
        view.addView(navBar)
    }
    
    override func layoutView() {
        super.layoutView()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
    }
}
