//
//  FriendsExtension.swift
//  HomeWork_2_AppScreens
//
//  Created by Артем Станкевич on 12.11.2020.
//

import UIKit

extension FriendsViewController: OutputView {
    
    func output(_ data: Any?, identifier: String) {
        if identifier == String(describing: AddFriendViewController.self) {
            if let data = data as? MyFriendProfile {
                self.dataModel.append(data)
                self.friendsTableView.reloadData()
            }
        }
    }
    func addFriendButtonSetup() {
        addFriendButton.translatesAutoresizingMaskIntoConstraints = false
        addFriendButton.layer.borderColor = UIColor.black.cgColor
        addFriendButton.layer.borderWidth = 1.0
        addFriendButton.layer.cornerRadius = 5.0
        addFriendButton.clipsToBounds = true
        addFriendButton.setTitleColor(.black, for: .normal)
        addFriendButton.setTitle("add", for: .normal)
        addFriendButton.addTarget(self, action: #selector(addFriendButtonAction), for: .touchUpInside)
        NSLayoutConstraint.activate([
                                        addFriendButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
                                        addFriendButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 30),
                                        addFriendButton.widthAnchor.constraint(equalToConstant: 50),
                                        addFriendButton.heightAnchor.constraint(equalToConstant: 50)])
    }
    func FriendsBackButtonSetup() {
        FriendsBackButton.translatesAutoresizingMaskIntoConstraints = false
        FriendsBackButton.layer.borderColor = UIColor.black.cgColor
        FriendsBackButton.layer.borderWidth = 1.0
        FriendsBackButton.layer.cornerRadius = 5.0
        FriendsBackButton.clipsToBounds = true
        FriendsBackButton.setTitleColor(.black, for: .normal)
        FriendsBackButton.setTitle("back", for: .normal)
        FriendsBackButton.addTarget(self, action: #selector(FriendsBackButtonAction), for: .touchUpInside)
        NSLayoutConstraint.activate([
                                    FriendsBackButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
                                    FriendsBackButton.topAnchor.constraint(equalTo: addFriendButton.topAnchor),
                                    FriendsBackButton.widthAnchor.constraint(equalToConstant: 50),
                                    FriendsBackButton.heightAnchor.constraint(equalToConstant: 50)])
    }
}

extension String {
    func changeVC(_ storyboard: String = "Main")->UIViewController? {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: self)
        return vc
    }
}
