//
//  ArticleDetailTableViewCell.swift
//  NYTimes
//
//  Created by Madhuri Agrawal on 21/02/24.
//

import UIKit

class ArticleDetailTableViewCell: UITableViewCell {

    @IBOutlet private weak var postDescriptionLabel: UILabel!
    @IBOutlet private weak var posterImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    static var identifier = String(describing: ArticleDetailTableViewCell.self)
    
    func configuration(with model: ArticleDetails?) {
        titleLabel.text = model?.title
        postDescriptionLabel.text = model?.abstract
        if let data = model?.imadeData {
            let image = UIImage(data: data)
            posterImage.image = image
        }
    }
    
}
