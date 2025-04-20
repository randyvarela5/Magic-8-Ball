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
    let questionTextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        setupButton()
    }
    func setupButton() {
        view.addSubview(askButton)
        view.addSubview(settingsButton)
        view.addSubview(questionTextField)
        
        askButton.configuration = .filled()
        askButton.configuration?.baseBackgroundColor = .systemBlue
        askButton.configuration?.title = "Ask question"
        
        settingsButton.configuration = .gray()
        settingsButton.configuration?.title = "Settings"
        
        questionTextField.placeholder = "Enter your question"
        questionTextField.backgroundColor = .white
        
        askButton.translatesAutoresizingMaskIntoConstraints = false
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        questionTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            questionTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            questionTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            questionTextField.widthAnchor.constraint(equalToConstant: 200),
            questionTextField.heightAnchor.constraint(equalToConstant: 50),
            
            askButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80),
            askButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            askButton.widthAnchor.constraint(equalToConstant: 150),
            askButton.heightAnchor.constraint(equalToConstant: 50),
            
            settingsButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80),
            settingsButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
            settingsButton.widthAnchor.constraint(equalToConstant: 150),
            settingsButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }

}

