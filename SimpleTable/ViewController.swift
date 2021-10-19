//
//  ViewController.swift
//  SimpleTable
//
//  Created by Mason Phillips on 10/5/21.
//

import UIKit

struct Rep {
    let name       : String
    let affiliation: Party
    let district   : Int
    let started    : Int
    
    enum Party: String {
        case democrat, republican
    }
}

class ViewController: UITableViewController {
    
    let representatives = [
        Rep(name: "Louie Gohmert", affiliation: .republican, district: 1, started: 2005),
        Rep(name: "Dan Crenshaw", affiliation: .republican, district: 2, started: 2019),
        Rep(name: "Van Taylor", affiliation: .republican, district: 3, started: 2019),
        Rep(name: "Pat Fallon", affiliation: .republican, district: 4, started: 2021),
        Rep(name: "Lance Gooden", affiliation: .republican, district: 5, started: 2019),
        Rep(name: "Jake Ellzey", affiliation: .republican, district: 6, started: 2021),
        Rep(name: "Lizzie Fletcher", affiliation: .democrat, district: 7, started: 2019),
        Rep(name: "Kevin Brady", affiliation: .republican, district: 8, started: 1997),
        Rep(name: "Al Green", affiliation: .democrat, district: 9, started: 2005),
        Rep(name: "Michael McCaul", affiliation: .republican, district: 10, started: 2005),
        Rep(name: "August Pfluger", affiliation: .republican, district: 11, started: 2021),
        Rep(name: "Kay Granger", affiliation: .republican, district: 12, started: 1997),
        Rep(name: "Ronny Jackson", affiliation: .republican, district: 13, started: 2021),
        Rep(name: "Randy Weber", affiliation: .republican, district: 14, started: 2013),
        Rep(name: "Vicente Gonzalez", affiliation: .democrat, district: 15, started: 2017),
        Rep(name: "Veronica Escobar", affiliation: .democrat, district: 16, started: 2019),
        Rep(name: "Pete Sessions", affiliation: .republican, district: 17, started: 2021),
        Rep(name: "Sheila Jackson Lee", affiliation: .democrat, district: 18, started: 1995),
        Rep(name: "Jody Arrington", affiliation: .republican, district: 19, started: 2017),
        Rep(name: "Joaquin Castro", affiliation: .democrat, district: 20, started: 2013),
        Rep(name: "Chip Roy", affiliation: .republican, district: 21, started: 2019),
        Rep(name: "Troy Nehls", affiliation: .republican, district: 22, started: 2021),
        Rep(name: "Tony Gonzales", affiliation: .republican, district: 23, started: 2021),
        Rep(name: "Beth Van Duyne", affiliation: .republican, district: 24, started: 2021),
        Rep(name: "Roger Williams", affiliation: .republican, district: 25, started: 2013),
        Rep(name: "Michael Burgess", affiliation: .republican, district: 26, started: 2003),
        Rep(name: "Michael Cloud", affiliation: .republican, district: 27, started: 2018),
        Rep(name: "Henry Cuellar", affiliation: .democrat, district: 28, started: 2005),
        Rep(name: "Sylvia Garcia", affiliation: .democrat, district: 29, started: 2019),
        Rep(name: "Eddie Bernice Johnson", affiliation: .democrat, district: 30, started: 1993),
        Rep(name: "John Carter", affiliation: .republican, district: 31, started: 2003),
        Rep(name: "Colin Allred", affiliation: .democrat, district: 32, started: 2019),
        Rep(name: "Marc Veasey", affiliation: .democrat, district: 33, started: 2013),
        Rep(name: "Filemon Vela Jr.", affiliation: .democrat, district: 34, started: 2013),
        Rep(name: "Lloyd Doggett", affiliation: .democrat, district: 35, started: 1995),
        Rep(name: "Brian Babin", affiliation: .republican, district: 36, started: 2015),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return representatives.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "stateCell", for: indexPath)
        
        cell.textLabel?.text = representatives[indexPath.row].name
        cell.detailTextLabel?.text = representatives[indexPath.row].affiliation.rawValue.capitalized
        
        return cell
    }
}

