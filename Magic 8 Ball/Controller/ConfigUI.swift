//
//  ConfigUI.swift
//  Magic 8 Ball
//
//  Created by Randy Varela on 4/20/25.
//

import Foundation
import UIKit

extension EightBallViewController {
    
    func setupUI() {
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
        
        settingsButton.addTarget(self, action: #selector(goToSettingScreen), for: .touchUpInside)
        
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
    
    @objc func goToSettingScreen() {
        let settingsScreen = SettingsViewController()
        settingsScreen.title = "Settings"
        navigationController?.pushViewController(settingsScreen, animated: true)
    }
}

extension SettingsViewController {
    
    func setupTableVIew() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SwitchCell.self, forCellReuseIdentifier: "SwitchCell")
    }
    
    func setupDefaultButton() {
        defaultButton.configuration = .filled()
        view.addSubview(defaultButton)
        defaultButton.setTitle("Restore Defaults", for: .normal)
        defaultButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            //            defaultButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            //            defaultButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            //            defaultButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
            defaultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            defaultButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            defaultButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            defaultButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            defaultButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
