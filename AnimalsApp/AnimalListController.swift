//
//  AnimalListController.swift
//  AnimalsApp
//
//  Created by Никита on 17.02.2024.
//

import UIKit

final class AnimalListController: UITableViewController {
    
    private var animals = Animal.getAnimal()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
//MARK: - UITableViewDataSource
extension AnimalListController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        animals.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? AnimalViewCell else { return UITableViewCell() }
        cell.delegate = self
        let animal = animals[indexPath.row]
        cell.configure(animal: animal)
        
        return cell
    }
}

extension AnimalListController: AnimalViewCellDelegate {
    func changeFavorite(_ cell: UITableViewCell) {
        if let indexPath = tableView.indexPath(for: cell) {
            animals[indexPath.row].isFavorite.toggle()
            tableView.reloadRows(at: [IndexPath(row: indexPath.row, section: 0)], with: .none)
        }
    }
    
}
