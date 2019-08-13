//
//  ViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Tom Seymour on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var zooTableView: UITableView!
    
    let animals = ZooAnimal.zooAnimals
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let theAnimal = animals[indexPath.row]
        
        guard let cell = zooTableView.dequeueReusableCell(withIdentifier: "animalCell") as? AnimalTableViewCell else {
            return UITableViewCell()
        }
        cell.animalNameLabel.text = theAnimal.name
        cell.originLabel.text = theAnimal.origin
        cell.animalImage.image = UIImage(named: "\(theAnimal.imageNumber)")
        return cell
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zooTableView.dataSource = self
        zooTableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

