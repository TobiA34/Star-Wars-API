//
//  StarWarsTableviewCell.swift
//  MovieApi
//
//  Created by tobi adegoroye on 04/03/2021.
//

import UIKit

class StarWarsTableviewCell: UITableViewCell {
    
    static let cellID = "StarWarsTableviewCell"

    let starWarsName: UILabel = {
        let starWarsName = UILabel()
        starWarsName.translatesAutoresizingMaskIntoConstraints = false
        starWarsName.textColor = .black
        return starWarsName
    }()
    
    func setupView() {
       contentView.addSubview(starWarsName)
       NSLayoutConstraint.activate([
           starWarsName.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 20),
           starWarsName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 10),
           starWarsName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -10),
           starWarsName.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -20)
       ])    }
    
    func configure(character: Character?) {
        starWarsName.text = character?.name
        setupView()
    }
}
