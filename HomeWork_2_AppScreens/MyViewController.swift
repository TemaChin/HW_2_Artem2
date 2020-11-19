//
//  MyViewController.swift
//  HomeWork_2_AppScreens
//
//  Created by Артем Станкевич on 20.10.2020.
//

import UIKit

class MyViewController: UIViewController {

    lazy var myNameLabel: UILabel = {
        return UILabel()
    }()
    lazy var myCityLabel: UILabel = {
        return UILabel()
    }()
    lazy var myFriends: UIButton = {
        return UIButton()
    }()
    var nameMain = "Василий"
    var cityMain = "СПб"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myNameLabel)
        myNameLabelSetup()
        view.addSubview(myCityLabel)
        myCityLabelSetup()
        view.addSubview(myFriends)
        myFriendsSetup()
        
    }
    
    @ objc func vkFriendsButtonAction() {
        
        if let viewController = String(describing: FriendsViewController.self).viewController() as? FriendsViewController {
            self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    }
}
