//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by Cesar Fernandez on 3/11/24.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    private func updateView() {
        symbolLabel.text = emoji?.symbol ?? ""
        nameLabel.text = emoji?.name ?? ""
        descriptionLabel.text = emoji?.description ?? ""
    }
    
    var emoji: Emoji? {
        didSet {
            updateView()
        }
    }
    
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
}
