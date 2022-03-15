//
//  ViewController.swift
//  Colors
//
//  Created by Yashom on 15/03/22.
//

import UIKit

class MultipleColorViewController: UITableViewController {
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad........")
        addRandomColors()
    }
    
    func addRandomColors( ) {
        for _ in 0..<50 {
            let getRandomColor = randomColor()
            colors.append(getRandomColor)
        }
        
    }
    
    func randomColor() ->  UIColor{
        let randomColor =  UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        return randomColor
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("numberOfRowsInSection")
        return colors.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        //        let cell = tableView.dequeueReusableCell(withIdentifier:"ToDoItemCell",
        //            for: indexPath)
        
        let cell = UITableViewCell()
        
        let item = colors[indexPath.row]
        //cell.textLabel?.text = item  //item.title //+ " - IndexPath -> row \(indexPath.row) section
        cell.backgroundColor = item
        return cell
    }
    
    /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToItems", sender: self)
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! SelectedColorViewController
        if let indexpath = tableView.indexPathForSelectedRow {
            destinationVC.selectedColor = colors[indexpath.row]
            
        }
    }
    
    */
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //performSegue(withIdentifier: "goToItems", sender: colors[indexPath.row])
        performSegue(withIdentifier: "goToItems", sender: colors[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! SelectedColorViewController
        if let selectedColor = sender as? UIColor {
            destinationVC.selectedColor = selectedColor
        }
    }
    
}
