//
//  SwitchCell.swift
//  Magic 8 Ball
//
//  Created by Randy Varela on 4/21/25.
//

import Foundation
import UIKit

class SwitchCell: UITableViewCell {
    
    let toggleSwitch = UISwitch()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        
        accessoryView = toggleSwitch
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
