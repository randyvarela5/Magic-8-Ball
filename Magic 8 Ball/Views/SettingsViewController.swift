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
    }
    
    private func setupTableVIew() {
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
    
    private func setupDefaultButton() {
        //defaultButton.buttonType = UIButton(type: .system)
        view.addSubview(defaultButton)
        defaultButton.setTitle("Restore Defaults", for: .normal)
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
