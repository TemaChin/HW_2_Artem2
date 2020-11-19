//
//  MyFriendViewController.swift
//  HomeWork_2_AppScreens
//
//  Created by Артем Станкевич on 19.10.2020.
//

import UIKit

class MyFriendViewController: UIViewController {
    
    lazy var myFriendsNameLabel: UILabel = {
        return UILabel()
    }()
    lazy var myFriendsCityLabel: UILabel = {
        return UILabel()
    }()
    lazy var myFriendsBackButton: UIButton = {
        return UIButton()
    }()
    var currentFriend: MyFriendProfile? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myFriendsNameLabel)
        myFriendsNameLabelSetup()
        view.addSubview(myFriendsCityLabel)
        myFriendsCityLabelSetup()
        view.addSubview(myFriendsBackButton)
        myFriendsBackButtonSetup()

    }
    
    @ objc func myFriendBackButtonAction() {
        self.navigationController?.popViewController(animated: true)
    }

}


