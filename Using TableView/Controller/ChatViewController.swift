//
//  ViewController.swift
//  Using TableView
//
//  Created by Abdulrahman Al-amoudi on 09/08/2020.
//  Copyright © 2020 Abdulrahman Al-amoudi. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    
    @IBOutlet weak var messageText: UITextField!
    @IBOutlet weak var TableView: UITableView!
    
    var messages : [Message] = [
        Message(sender: "1@a.com", messageBody: "Hi"),
        Message(sender: "ali@a.com", messageBody: "Hello"),
        Message(sender: "1@a.com", messageBody: "Test Chating")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
        TableView.delegate = self
        
        TableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SendPressed(_ sender: UIButton) {
        if messageText.text != ""
        {
            messages.append(Message(sender: "a@a.com", messageBody: messageText.text!))
            TableView.reloadData()
            messageText.text = ""
        }
        
    }
    
}

//MARK: - UITableViewDataSource

extension ChatViewController : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //        print (indexPath)
        //        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
        //        cell.textLabel?.text = messages[indexPath.row].messageBody
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCellTableViewCell
        cell.label.text = messages[indexPath.row].messageBody
        return cell
        
    }
    
    
}

extension ChatViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print( messages[indexPath.row].messageBody)
    }
}
