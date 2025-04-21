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
    let eightBallImage = UIImageView()
    let titleImage = UIImageView()
    let backroundImage = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray2
        setupButton()
    }
    func setupButton() {
        view.addSubview(askButton)
        view.addSubview(settingsButton)
        view.addSubview(questionTextField)
        view.addSubview(eightBallImage)
        view.addSubview(titleImage)
        view.addSubview(backroundImage)
        
        view.sendSubviewToBack(backroundImage)
        
        backroundImage.frame = UIScreen.main.bounds
        backroundImage.contentMode = .scaleAspectFill
        backroundImage.image = UIImage(named: "magic-8-ball-background-purple.svg")
        
        titleImage.image = UIImage(named: "eightBallTitle.png")
        
        eightBallImage.image = UIImage(named: "8-Ball.png")
        
        askButton.configuration = .filled()
        askButton.configuration?.baseBackgroundColor = .systemBlue
        askButton.configuration?.title = "Ask question"
        
        settingsButton.configuration = .gray()
        settingsButton.configuration?.title = "Settings"
        
        questionTextField.placeholder = "Enter your question"
        questionTextField.backgroundColor = .white
        questionTextField.layer.cornerRadius = 10
        
        askButton.translatesAutoresizingMaskIntoConstraints = false
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        questionTextField.translatesAutoresizingMaskIntoConstraints = false
        eightBallImage.translatesAutoresizingMaskIntoConstraints = false
        titleImage.translatesAutoresizingMaskIntoConstraints = false
        backroundImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            titleImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            titleImage.widthAnchor.constraint(equalToConstant: 280),
            titleImage.heightAnchor.constraint(equalToConstant: 200),
            
            eightBallImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            eightBallImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            eightBallImage.widthAnchor.constraint(equalToConstant: 320),
            eightBallImage.heightAnchor.constraint(equalToConstant: 320),
            
            questionTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            questionTextField.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -150),
            questionTextField.widthAnchor.constraint(equalToConstant: 320),
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

