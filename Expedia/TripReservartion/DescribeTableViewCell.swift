//
//  DescribeTableViewCell.swift
//  Expedia
//
//  Created by YooBin Jo on 16/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class DescribeTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var describeLabel: UILabel!
    
    func updateUI(_ title: Array<String>, _ describe: Array<String>, _ indexPath: Int) {
        titleLabel.text = title[indexPath]
        describeLabel.text = describe[indexPath]
    }
    
}
