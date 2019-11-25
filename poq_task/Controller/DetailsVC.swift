//
//  DetailsVC.swift
//  poq_task
//
//  Created by Massimiliano on 25/11/2019.
//  Copyright © 2019 Massimiliano Bonafede. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {

    
    
    var squareDetails : Square?
    
    
    
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var descriptionLbl: UILabel!
    @IBOutlet var gitLbl: UILabel!
    @IBOutlet var sshLbl: UILabel!
    @IBOutlet var branchLbl: UILabel!
    @IBOutlet var homepageLbl: UILabel!
    @IBOutlet var watchesCountLbl: UILabel!
    @IBOutlet var watchersLbl: UILabel!
    @IBOutlet var teamLbl: UILabel!
    @IBOutlet var mergeLbl: UILabel!
    @IBOutlet var issuesCountLbl: UILabel!
    @IBOutlet var subscriptionLbl: UILabel!
    @IBOutlet var createdLbl: UILabel!
    @IBOutlet var idLbl: UILabel!
    @IBOutlet var cloneLbl: UILabel!
    @IBOutlet var languageLbl: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels(forSqare: squareDetails!)
    }
    
    
    func setLabels(forSqare square : Square){
        nameLbl.text = "Name: \(square.name)"
        descriptionLbl.text = "Description: \(square.description)"
        gitLbl.text = "Git URL: \(square.git_url)"
        sshLbl.text = "SSH URL: \(square.ssh_url)"
        branchLbl.text = "Default Branch: \(square.default_branch)"
        homepageLbl.text = "Homepage \(square.homepage)"
        watchesCountLbl.text = "Watchers Count: \(square.watchers_count)"
        watchersLbl.text = "Watchers: \(square.watchers)"
        teamLbl.text = "Teams URL: \(square.teams_url)"
        mergeLbl.text = "Merges URL: \(square.merges_url)"
        issuesCountLbl.text = "Issues Count: \(square.open_issues_count)"
        subscriptionLbl.text = "Subscriptions URL: \(square.subscription_url)"
        createdLbl.text = "Created: \(square.created_at)"
        idLbl.text = "ID: \(square.id)"
        cloneLbl.text = "Clone URL: \(square.clone_url)"
        languageLbl.text = "Language: \(square.language)"
    }

    
    
    
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
