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
        setupUI()
    }
}

