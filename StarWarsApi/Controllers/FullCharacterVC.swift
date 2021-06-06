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
        name.textColor = Colour.textColour
        return name
    }()
    
    let personHeight: UILabel = {
        let height = UILabel()
        height.translatesAutoresizingMaskIntoConstraints = false
        height.textColor = Colour.textColour
        return height
    }()
    
    let mass: UILabel = {
        let mass = UILabel()
        mass.translatesAutoresizingMaskIntoConstraints = false
        mass.textColor = Colour.textColour
        return mass
    }()
    
    let hairColor: UILabel = {
        let hairColor = UILabel()
        hairColor.translatesAutoresizingMaskIntoConstraints = false
        hairColor.textColor = Colour.textColour
        return hairColor
    }()
    
    let skinColor: UILabel = {
        let skinColor = UILabel()
        skinColor.translatesAutoresizingMaskIntoConstraints = false
        skinColor.textColor = Colour.textColour
        return skinColor
    }()
    
    let eyeColor: UILabel = {
        let eyeColor = UILabel()
        eyeColor.translatesAutoresizingMaskIntoConstraints = false
        eyeColor.textColor = Colour.textColour
        return eyeColor
    }()
    
    let birthYear: UILabel = {
        let birthYear = UILabel()
        birthYear.translatesAutoresizingMaskIntoConstraints = false
        birthYear.textColor = Colour.textColour
        return birthYear
    }()
    
    let gender: UILabel = {
        let gender = UILabel()
        gender.translatesAutoresizingMaskIntoConstraints = false
        gender.textColor = Colour.textColour
        return gender
    }()
    
    let homeworld: UILabel = {
        let homeworld = UILabel()
        homeworld.translatesAutoresizingMaskIntoConstraints = false
        homeworld.textColor = Colour.textColour
        return homeworld
    }()
    
    let card: UIView = {
        let card = UIView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = Colour.brown
        card.layer.cornerRadius = 8
        return card
    }()

    func configure() {
        name.text = character?.name
        personHeight.text = character?.height
        hairColor.text = character?.hair_color
        eyeColor.text = character?.eye_color
        birthYear.text = character?.birth_year
        gender.text = character?.gender
        homeworld.text = character?.homeworld
    }
    
    func setupView() {
        view.backgroundColor = Colour.background
        setupConstraint()
        configure()
    }
    
    func setupConstraint() {
        view.addSubview(card)
        card.addSubview(name)
        card.addSubview(personHeight)
        card.addSubview(hairColor)
        card.addSubview(eyeColor)
        card.addSubview(birthYear)
        card.addSubview(gender)
        card.addSubview(homeworld)
        
        NSLayoutConstraint.activate([
            
            card.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 10),
            card.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant:20),
            card.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -20),
            
            
            name.topAnchor.constraint(equalTo: card.safeAreaLayoutGuide.topAnchor,constant: 10),
            name.leadingAnchor.constraint(equalTo: card.safeAreaLayoutGuide.leadingAnchor,constant:20),
            name.trailingAnchor.constraint(equalTo: card.safeAreaLayoutGuide.trailingAnchor,constant: -20),
            
            hairColor.topAnchor.constraint(equalTo: name.bottomAnchor,constant: 10),
            hairColor.leadingAnchor.constraint(equalTo: card.safeAreaLayoutGuide.leadingAnchor,constant: 20),
            hairColor.trailingAnchor.constraint(equalTo: card.safeAreaLayoutGuide.trailingAnchor,constant: -20),
            
            eyeColor.topAnchor.constraint(equalTo: hairColor.bottomAnchor,constant: 10),
            eyeColor.leadingAnchor.constraint(equalTo: card.safeAreaLayoutGuide.leadingAnchor,constant: 20),
            eyeColor.trailingAnchor.constraint(equalTo: card.safeAreaLayoutGuide.trailingAnchor,constant: -20),
            
            personHeight.topAnchor.constraint(equalTo: eyeColor.bottomAnchor,constant: 10),
            personHeight.leadingAnchor.constraint(equalTo: card.safeAreaLayoutGuide.leadingAnchor,constant: 20),
            personHeight.trailingAnchor.constraint(equalTo: card.safeAreaLayoutGuide.trailingAnchor,constant: -20),
            
            
            birthYear.topAnchor.constraint(equalTo: personHeight.bottomAnchor,constant: 10),
            birthYear.leadingAnchor.constraint(equalTo: card.safeAreaLayoutGuide.leadingAnchor,constant: 20),
            birthYear.trailingAnchor.constraint(equalTo: card.safeAreaLayoutGuide.trailingAnchor,constant: -20),
            
            gender.topAnchor.constraint(equalTo: birthYear.bottomAnchor,constant: 10),
            gender.leadingAnchor.constraint(equalTo: card.safeAreaLayoutGuide.leadingAnchor,constant: 20),
            gender.trailingAnchor.constraint(equalTo: card.safeAreaLayoutGuide.trailingAnchor,constant: -20),
            
            homeworld.topAnchor.constraint(equalTo: gender.bottomAnchor,constant: 10),
            homeworld.leadingAnchor.constraint(equalTo: card.safeAreaLayoutGuide.leadingAnchor,constant: 20),
            homeworld.trailingAnchor.constraint(equalTo: card.safeAreaLayoutGuide.trailingAnchor,constant: -20),
            homeworld.bottomAnchor.constraint(equalTo: card.safeAreaLayoutGuide.bottomAnchor,constant: -10)

        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        self.navigationItem.title = character?.name
    }
}
 
