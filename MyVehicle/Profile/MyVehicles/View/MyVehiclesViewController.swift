//
//  MyVehiclesViewController.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 18/03/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import UIKit

class MyVehiclesViewController: UIViewController, MyVehiclesViewInput, UITableViewDelegate, UITableViewDataSource {
 
    
    var presenter: MyVehiclesViewOutput!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 200
        tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return presenter.obtainCountOfCars()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let models = presenter.obtainCars()
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VehicleTableViewCell
        let currentCar = models[indexPath.row]
        cell.configureCell(label: currentCar.label,
                           model: currentCar.model,
                           year: currentCar.year)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let models = presenter.obtainCars()
        let car = models[indexPath.row]
        presenter.showDetailCar(car: car)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail", let model = sender as? Car {
            let destinationController = segue.destination as! Abstarct
            destinationController.setData(data: model)
        }
    }
}
