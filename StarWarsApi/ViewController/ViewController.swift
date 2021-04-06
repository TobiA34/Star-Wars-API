//
//  ViewController.swift
//  StarWarsApi
//
//  Created by tobi adegoroye on 04/03/2021.
//

import UIKit
class ViewController: UIViewController {
    let starWarsService = StarWarsService()
    private var datasource: Array<Character> = [] {
        didSet{
            tableView.reloadData()
        }
    }
    
    let tableView: UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    
    func setupView() {
        view.backgroundColor = .white
        setupConstraint()
        self.navigationController?.navigationBar.barTintColor = .yellow
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
        self.navigationItem.title = "Characters"
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let character = datasource[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: StarWarsTableviewCell.cellID, for: indexPath) as! StarWarsTableviewCell
        cell.configure(character: character)
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let character = datasource[indexPath.row]
        let characterFullScreen = FullCharacterVC(character: character)
        self.navigationController?.pushViewController(characterFullScreen, animated: true)
    }
}

extension ViewController {
    func getAllStarWarsCharacters(){
        starWarsService.getCharacter { res in
            switch res {
            case .success(let character):
                self.datasource = character
            case .failure(let error):
                print(error)
            }
        }
    }
}
