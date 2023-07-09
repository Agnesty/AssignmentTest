//
//  HistoryTableViewCell.swift
//  Latihan-dua
//
//  Created by Agnes Triselia Yudia on 09/07/23.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var addressHistory: UILabel!
    @IBOutlet weak var informationHistory: UILabel!
    @IBOutlet weak var imageHistory: UIImageView! {
        didSet {
            imageHistory.contentMode = .scaleAspectFill
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
