//
//  FullCharacterVC.swift
//  StarWarsApi
//
//  Created by tobi adegoroye on 04/03/2021.
//

import UIKit

class FullCharacterVC: UIViewController {
    
    private var character:Character?
    
    init(character:Character){
        super.init(nibName: nil, bundle: nil)
        self.character = character
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let name: UILabel = {
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    let height: UILabel = {
        let height = UILabel()
        height.translatesAutoresizingMaskIntoConstraints = false
        return height
    }()
    
    let mass: UILabel = {
        let mass = UILabel()
        mass.translatesAutoresizingMaskIntoConstraints = false
        return mass
    }()
    
    let hairColor: UILabel = {
        let hairColor = UILabel()
        hairColor.translatesAutoresizingMaskIntoConstraints = false
        return hairColor
    }()
    
    let skinColor: UILabel = {
        let skinColor = UILabel()
        skinColor.translatesAutoresizingMaskIntoConstraints = false
        return skinColor
    }()
    
    let eyeColor: UILabel = {
        let eyeColor = UILabel()
        eyeColor.translatesAutoresizingMaskIntoConstraints = false
        return eyeColor
    }()
    
    let birthYear: UILabel = {
        let birthYear = UILabel()
        birthYear.translatesAutoresizingMaskIntoConstraints = false
        return birthYear
    }()
    
    let gender: UILabel = {
        let gender = UILabel()
        gender.translatesAutoresizingMaskIntoConstraints = false
        return gender
    }()
    
    let homeworld: UILabel = {
        let homeworld = UILabel()
        homeworld.translatesAutoresizingMaskIntoConstraints = false
        return homeworld
    }()
    
    let card: UIView = {
        let card = UIView()
        card.layer.cornerRadius = 10;
        card.layer.masksToBounds = true;
        card.backgroundColor = .cyan
        card.translatesAutoresizingMaskIntoConstraints = false
        return card
    }()
    
    func configure() {
        name.text = character?.name
        height.text = character?.height
        hairColor.text = character?.hair_color
        eyeColor.text = character?.eye_color
        birthYear.text = character?.birth_year
        gender.text = character?.gender
        homeworld.text = character?.homeworld
    }
    
    func setupView() {
        view.backgroundColor = .white
        setupConstraint()
        configure()
    }
    
    func setupConstraint() {
        view.addSubview(card)
        card.addSubview(name)
        card.addSubview(height)
        card.addSubview(hairColor)
        card.addSubview(eyeColor)
        card.addSubview(birthYear)
        card.addSubview(gender)
        card.addSubview(homeworld)
        
        NSLayoutConstraint.activate([
            
            card.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 10),
            card.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 20),
            card.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -20),
            card.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -10),
            card.heightAnchor.constraint(equalToConstant: 200),
            card.widthAnchor.constraint(equalToConstant: 200),
            
            
            name.topAnchor.constraint(equalTo: card.topAnchor,constant: 5),
            name.leadingAnchor.constraint(equalTo: card.leadingAnchor,constant:20),
            name.trailingAnchor.constraint(equalTo: card.trailingAnchor,constant: -20),
            
            height.topAnchor.constraint(equalTo: name.bottomAnchor,constant: 5),
            height.leadingAnchor.constraint(equalTo: card.leadingAnchor,constant: 20),
            height.trailingAnchor.constraint(equalTo: card.trailingAnchor,constant: -20),
            
            hairColor.topAnchor.constraint(equalTo: height.bottomAnchor,constant: 5),
            hairColor.leadingAnchor.constraint(equalTo: card.leadingAnchor,constant: 20),
            hairColor.trailingAnchor.constraint(equalTo: card.trailingAnchor,constant: -20),
            
            eyeColor.topAnchor.constraint(equalTo: hairColor.bottomAnchor,constant: 5),
            eyeColor.leadingAnchor.constraint(equalTo: card.leadingAnchor,constant: 20),
            eyeColor.trailingAnchor.constraint(equalTo: card.trailingAnchor,constant: -20),
            
            birthYear.topAnchor.constraint(equalTo: eyeColor.bottomAnchor,constant: 5),
            birthYear.leadingAnchor.constraint(equalTo: card.leadingAnchor,constant: 20),
            birthYear.trailingAnchor.constraint(equalTo: card.trailingAnchor,constant: -20),
            
            gender.topAnchor.constraint(equalTo: birthYear.bottomAnchor,constant: 5),
            gender.leadingAnchor.constraint(equalTo: card.leadingAnchor,constant: 20),
            gender.trailingAnchor.constraint(equalTo: card.trailingAnchor,constant: -20),
            
            homeworld.topAnchor.constraint(equalTo: gender.bottomAnchor,constant: 5),
            homeworld.leadingAnchor.constraint(equalTo: card.leadingAnchor,constant: 20),
            homeworld.trailingAnchor.constraint(equalTo: card.trailingAnchor,constant: -20)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        self.navigationItem.title = character?.name
    }
    
}
 
