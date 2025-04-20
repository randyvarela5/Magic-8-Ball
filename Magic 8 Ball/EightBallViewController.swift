//
//  EightBallViewController.swift
//  Magic 8 Ball
//
//  Created by Randy Varela on 4/19/25.
//

import UIKit

class EightBallViewController: UIViewController {
    
    let askButton = UIButton()
    let settingsButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        setupButton()
    }
    func setupButton() {
        view.addSubview(askButton)
        view.addSubview(settingsButton)
        
        askButton.configuration = .filled()
        askButton.configuration?.baseBackgroundColor = .systemBlue
        askButton.configuration?.title = "Ask question"
        
        settingsButton.configuration = .gray()
        settingsButton.configuration?.title = "Settings"
        
        askButton.translatesAutoresizingMaskIntoConstraints = false
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            askButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            askButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            askButton.widthAnchor.constraint(equalToConstant: 200),
            askButton.heightAnchor.constraint(equalToConstant: 50),
            
            //settingsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            settingsButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            settingsButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 20),
            settingsButton.widthAnchor.constraint(equalToConstant: 200),
            settingsButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }

}

