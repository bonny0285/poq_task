//
//  ViewController.swift
//  poq_task
//
//  Created by Massimiliano on 25/11/2019.
//  Copyright © 2019 Massimiliano Bonafede. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class MainVC: UIViewController {
    
    private var square : [Square] = []
    @IBOutlet var tableView: UITableView!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        getData(for_url: URL_REPOSITORY)
    }

    
    func getData(for_url url : String){
        AF.request(url).responseJSON { (response) in
            let response = response
            switch response.result {
            case .success(let value):
                let myJSON : JSON = JSON(arrayLiteral: value)
                self.getObjetFromJson(formJOSN: myJSON)
                self.tableView.reloadData()
            case .failure(let error):
                print(error)
            }
            
        }
    }
    
    
    
    func getObjetFromJson (formJOSN json : JSON){
        let counter = json[0].count
        for i in 0...(counter - 1) {
            let name = json[0][i]["name"]
            let description = json[0][i]["description"]
            let git_url = json[0][i]["git_url"]
            let ssh_url = json[0][i]["ssh_url"]
            let default_branch = json[0][i]["default_branch"]
            let homepage = json[0][i]["homepage"]
            let watchers_count = json[0][i]["watchers_count"]
            let teams_url = json[0][i]["teams_url"]
            let merges_url = json[0][i]["merges_url"]
            let open_isues_count = json[0][i]["open_issues_count"]
            let watchers = json[0][i]["watchers"]
            let subscription_url = json[0][i]["subscription_url"]
            let created_at = json[0][i]["created_at"]
            let id = json[0][i]["id"]
            let clone_url = json[0][i]["clone_url"]
            let language = json[0][i]["language"]
            
            let myObjet = Square(name: "\(name)", description: "\(description)", git_url: "\(git_url)", ssh_url: "\(ssh_url)", default_branch: "\(default_branch)", homepage: "\(homepage)", watcher_count: "\(watchers_count)", teams_url: "\(teams_url)", merges_url: "\(merges_url)", open_issues_count: "\(open_isues_count)", watchers: "\(watchers)", subscription_url: "\(subscription_url)", created_at: "\(created_at)", id: "\(id)", clone_url: "\(clone_url)", language: "\(language)")
            
            square.append(myObjet)
        }
       
    }
    
    

}

extension MainVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return square.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SQUARE_CELL, for: indexPath) as? SquareCell else {return UITableViewCell()}
        
        cell.setupTableViewCell(forsquare: square[indexPath.row])
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let squareToSend = square[indexPath.row]
        performSegue(withIdentifier: SEGUE_TO_DETAILS, sender: squareToSend )
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == SEGUE_TO_DETAILS as String{
            let vc = segue.destination as! DetailsVC
            vc.squareDetails = sender as? Square
        }
        
    }
    
}

