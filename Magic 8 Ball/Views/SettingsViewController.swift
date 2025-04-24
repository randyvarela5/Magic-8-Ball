//
//  SettingsViewController.swift
//  Magic 8 Ball
//
//  Created by Randy Varela on 4/19/25.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let tableView = UITableView(frame: .zero, style: .insetGrouped)
    let toggleTitles = ["Biased", "Lucky", "Enable Shake", "Enable Sound"]
    let defaultButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupTableVIew()
        setupDefaultButton()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toggleTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SwitchCell", for: indexPath) as? SwitchCell else {
            return UITableViewCell()
        }
        cell.textLabel?.text = toggleTitles[indexPath.row]
        return cell
    }
}
