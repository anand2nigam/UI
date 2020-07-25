//
//  ViewController.swift
//  UI
//
//  Created by Anand Nigam on 25/07/20.
//  Copyright © 2020 Anand Nigam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var phone: UIImageView!
    @IBOutlet weak var circle: UIImageView!
    @IBOutlet weak var messageWidth: NSLayoutConstraint!
    @IBOutlet weak var customNavigationItem: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.registerCells()
        self.circleComponents()
        self.addNavigationItem()
    }
    
    // MARK: Navigation Items
    func addNavigationItem() {
        let shareImage = UIImage(systemName: "square.and.arrow.up")
        let searchImage = UIImage(systemName: "magnifyingglass")
        let backImage = UIImage(systemName: "arrow.left")
        
        let shareButton = UIBarButtonItem(image: shareImage, style: .plain, target: self, action: #selector(didTapShareButton(sender:)))
        let searchButton = UIBarButtonItem(image: searchImage, style: .plain, target: self, action: #selector(didTapSearchButton(sender:)))
        let backButton = UIBarButtonItem(image: backImage, style: .plain, target: self, action: #selector(didTapBackButton(sender:)))
        
        customNavigationItem.rightBarButtonItems = [shareButton, searchButton]
        customNavigationItem.leftBarButtonItem = backButton
    }
    
    @objc func didTapShareButton(sender: AnyObject){
        
    }
    
    @objc func didTapSearchButton(sender: AnyObject){
        
    }
    
    @objc func didTapBackButton(sender: AnyObject){
        
    }
    
    // MARK: UI Changes
    func circleComponents() {
        self.messageWidth.constant = self.view.frame.width/2
        self.message.layer.cornerRadius = self.message.frame.height/2
        self.message.layer.masksToBounds = true
        self.phone.layer.cornerRadius = self.phone.frame.height/2
        self.phone.layer.masksToBounds = true
        self.circle.layer.cornerRadius = self.circle.frame.height/2
        self.circle.layer.masksToBounds = true
    }
    
    // MARK: TableView Cells
    func registerCells() {
        let collectionCell = UINib(nibName: "CollectionTableViewCell", bundle: nil)
        tableView.register(collectionCell, forCellReuseIdentifier: "CollectionTableViewCell")
        let commentCell = UINib(nibName: "CommentTableViewCell", bundle: nil)
        tableView.register(commentCell, forCellReuseIdentifier: "CommentTableViewCell")
        let headerCell = UINib(nibName: "HeaderTableViewCell", bundle: nil)
        tableView.register(headerCell, forCellReuseIdentifier: "HeaderTableViewCell")
    }
    
    // MARK: TableView DataSource and Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell") as! HeaderTableViewCell
            headerCell.configureCell(withText: "Video", showEdit: false)
            return headerCell
        } else if indexPath.row == 1 {
            let collectionCell = tableView.dequeueReusableCell(withIdentifier: "CollectionTableViewCell") as! CollectionTableViewCell
            return collectionCell
        } else if indexPath.row == 2 {
            let headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell") as! HeaderTableViewCell
            headerCell.configureCell(withText: "Review", showEdit: true)
            return headerCell
        }
        
        let commentCell = tableView.dequeueReusableCell(withIdentifier: "CommentTableViewCell") as! CommentTableViewCell
        return commentCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 1 {
            return 300
        }
        return UITableView.automaticDimension
    }
    
}

