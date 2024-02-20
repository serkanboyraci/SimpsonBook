//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Ali serkan Boyracı  on 21.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
 
    var mySimpsons = [family]() //we cant define array here.
    var chosenSimpson : family? //to define with class // here is important
    
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self //to take data from
        tableView.delegate = self // to use delegate from
        
        //Simpson Objects
        let homer = family(nameInit: "homer", jobInit: "father", imageInit: UIImage(named: "homer")!)
        let marge = family(nameInit: "marge", jobInit: "mother", imageInit: UIImage(named: "marge")!)
        let maggie = family(nameInit: "maggie", jobInit: "baby", imageInit: UIImage(named: "maggie")!)
        let bart = family(nameInit: "bart", jobInit: "brother", imageInit: UIImage(named: "bart")!)
        let lisa  = family(nameInit: "lisa", jobInit: "sister", imageInit: UIImage(named: "lisa")!)
        
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(maggie)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = mySimpsons[indexPath.row].name
        cell.contentConfiguration = content  //take a row for a name
        return cell
         
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender:Any?) {
        if segue.identifier == "toDetailsVC" { // to be ensure that this segue is the same with our wanted segue
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
    
    

    

    


}

