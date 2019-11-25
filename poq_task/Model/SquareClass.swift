//
//  SquareClass.swift
//  poq_task
//
//  Created by Massimiliano on 25/11/2019.
//  Copyright © 2019 Massimiliano Bonafede. All rights reserved.
//

import UIKit


class Square {
    
    var name : String
    var description : String
    var git_url : String
    var ssh_url : String
    var default_branch : String
    var homepage : String
    var watchers_count : String
    var teams_url : String
    var merges_url : String
    var open_issues_count : String
    var watchers : String
    var subscription_url : String
    var created_at : String
    var id : String
    var clone_url : String
    var language : String
    
    
    init(name : String, description : String, git_url : String, ssh_url : String, default_branch : String, homepage : String, watcher_count : String, teams_url : String, merges_url : String, open_issues_count : String, watchers : String, subscription_url : String, created_at : String, id : String, clone_url : String, language : String) {
        self.name = name
        self.description = description
        self.git_url = git_url
        self.ssh_url = ssh_url
        self.default_branch = default_branch
        self.homepage = homepage
        self.watchers_count = watcher_count
        self.teams_url = teams_url
        self.merges_url = merges_url
        self.open_issues_count = open_issues_count
        self.watchers = watchers
        self.subscription_url = subscription_url
        self.created_at = created_at
        self.id = id
        self.clone_url = clone_url
        self.language = language
    }
    
}
