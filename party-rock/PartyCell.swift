//
//  PartyCell.swift
//  party-rock
//
//  Created by Vyacheslav Horbach on 16/09/16.
//  Copyright © 2016 Vjaceslav Horbac. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    
    @IBOutlet weak var previewImageView: UIImageView!
    @IBOutlet weak var previewTitleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock) {
        previewTitleLabel.text = partyRock.videoTitle
        //TODO: set image from url
        
        let url = URL(string: partyRock.imageUrl)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.previewImageView.image = UIImage(data: data)
                }
            } catch {
                
            }
        }
    }
}
