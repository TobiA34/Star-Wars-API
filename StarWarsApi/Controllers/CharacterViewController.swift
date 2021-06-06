//
//  ViewController.swift
//  StarWarsApi
//
//  Created by tobi adegoroye on 04/03/2021.
//

import UIKit
class CharacterViewController: UIViewController {
    let starWarsService = StarWarsService()
    let myIndicator = UIActivityIndicatorView(style: .large)
    private var datasource: Array<Character> = [] {
        didSet{
            tableView.reloadData()
        }
    }
    
    let tableView: UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.backgroundColor = .clear
        return tableview
    }()
    
    func setupView() {
        setupConstraint()
        view.backgroundColor = Colour.background
        self.navigationController?.navigationBar.barTintColor =  Colour.brown
        getAllStarWarsCharacters()
        tableView.register(StarWarsTableviewCell.self, forCellReuseIdentifier: StarWarsTableviewCell.cellID)
    }
    
    func setupConstraint() {
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        tableView.dataSource = self
        tableView.delegate = self
        self.navigationItem.title = Title.name
    }
}

extension CharacterViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let character = datasource[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: StarWarsTableviewCell.cellID, for: indexPath) as! StarWarsTableviewCell
        cell.configure(character: character)
        cell.selectionStyle = .none
        return cell
    }
}

extension CharacterViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let character = datasource[indexPath.row]
        let characterFullScreen = FullCharacterVC(character: character)
        self.navigationController?.pushViewController(characterFullScreen, animated: true)
    }
}

extension CharacterViewController {
    func getAllStarWarsCharacters() {
        self.loadIndicator()
        starWarsService.getCharacter { res in
            switch res {
            case .success(let character):
                self.datasource = character
            case .failure(let error):
                self.show(title: "Failed", message: "Failed to show api", buttonTitle: "Ok")
                print(error)
            }
            self.stopIndicator()
        }
    }
}


extension CharacterViewController {
    
    func loadIndicator(){
        myIndicator.center = self.view.center
        self.view.addSubview(myIndicator)
        myIndicator.bringSubviewToFront(self.view)
        myIndicator.startAnimating()
    }
    
    func stopIndicator(){
        myIndicator.stopAnimating()
    }
    
}
