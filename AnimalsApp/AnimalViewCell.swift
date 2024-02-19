//
//  AnimalViewCell.swift
//  AnimalsApp
//
//  Created by Никита on 17.02.2024.
//

import UIKit

protocol AnimalViewCellDelegate : AnyObject {
    func changeFavorite(_ cell: UITableViewCell)
}

class AnimalViewCell: UITableViewCell {

    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    
    weak var delegate: AnimalViewCellDelegate!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .cyan
    }
    
    @IBAction func favoritePressedButton() {
        delegate.changeFavorite(self)
    }
    
    func configure(animal: Animal) {
        animalLabel.text = animal.title
        animalImageView.image = UIImage(named: animal.image)
        favoriteButton.setTitle(
            animal.isFavorite
            ? Smile.redHeart.rawValue
            : Smile.whiteHeart.rawValue, for: .normal
        )
    }
}
