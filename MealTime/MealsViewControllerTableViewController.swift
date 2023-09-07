//
//  MealsViewControllerTableViewController.swift
//  MealTime
//
//  Created by Lera Savchenko on 7.09.23.
//

import UIKit

class MealsViewControllerTableViewController: UITableViewController {

    private var mealTimes: [Date] = []
    
    lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addMealButtonPressed(_ sender: Any) {
        let date = Date()
        mealTimes.append(date)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "My happy meal time"
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mealTimes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let mealTime = mealTimes[indexPath.row]
        cell.textLabel?.text = dateFormatter.string(from: mealTime)

        return cell
    }
    

   

}
