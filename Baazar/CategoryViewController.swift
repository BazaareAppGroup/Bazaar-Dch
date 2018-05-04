//
//  CategoryViewController.swift
//  Baazar
//
//  Created by David King on 4/25/18.
//  Copyright © 2018 David King. All rights reserved.
//
//TO-DO create categories for each service to fit under, populate category array with the category names
//TO-DO Only show as many cells as there are categories.
//TO-DO Change color of each table cell *Optional*
//

import UIKit

class CategoryViewController: UIViewController, UISearchBarDelegate, UITableViewDataSource {

    @IBOutlet weak var TableView: UITableView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    var categories: [String] = ["a","d","d"] // array will be filled with names of categories

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        searchBar.delegate = self
        TableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        
    {
        
        return categories.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell", for: indexPath) as! CategoryTableViewCell
        
        cell.CategoryLabel.text = categories[indexPath.row]
        
        return cell
        
        
    }

    
    
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar){
        
        //TO-DO--put default text back search bar if text doesnt change
        
        //TO-DO--this function should allow user to search for category or services not sure which
        
        
        
        if ((searchBar.text?.isEmpty)! || searchBar.text == " "){
            
            searchBar.text = "search for services"
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      var serviceView = segue as!ServiceCategoryViewController
       var cell = sender as! CategoryTableViewCell
        serviceView.category = cell.CategoryLabel.text!
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
