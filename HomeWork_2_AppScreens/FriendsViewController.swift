//
//  FriendsViewController.swift
//  HomeWork_2_AppScreens
//
//  Created by Артем Станкевич on 19.10.2020.
//

import UIKit

class FriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    lazy var addFriendButton: UIButton = {
        return UIButton()
    }()
    lazy var FriendsBackButton: UIButton = {
        return UIButton()
    }()
    var dataModel = [MyFriendProfile]()

    @IBOutlet weak var friendsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cell = UINib(nibName: "FriendsCell", bundle: nil)
        self.friendsTableView.register(cell, forCellReuseIdentifier: "cell")
        
        let model = MyFriendProfile("Vitek", "Voronesh")
        dataModel.append(model)
        
        view.addSubview(addFriendButton)
        addFriendButtonSetup()
        view.addSubview(FriendsBackButton)
        FriendsBackButtonSetup()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return dataModel.count
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FriendsCell
            cell.friendsNameLabel?.text = dataModel[indexPath.row].name
            cell.friendsDetailLabel?.text = dataModel[indexPath.row].info

            return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = dataModel[indexPath.row]
        if let viewController = String(describing: MyFriendViewController.self).viewController() as? MyFriendViewController {
            viewController.input(item)
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    @ objc func addFriendButtonAction() {
        if let viewController = String(describing: AddFriendViewController.self).viewController() as? AddFriendViewController {
            self.navigationController?.pushViewController(viewController, animated: true)
            viewController.listener = self
        }
        }
    
    @ objc func FriendsBackButtonAction() {
        self.navigationController?.popViewController(animated: true)
    }
    }





