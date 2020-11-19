//
//  Auth.swift
//  HomeWork_2_AppScreens
//
//  Created by Артем Станкевич on 18.10.2020.
//

import UIKit
    
class MyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initializeLabel()
    }

    func initializeLabel() {
        self.textAlignment = .center
        self.font = UIFont(name: "Helvetica", size: 20)
    }

    }

class MyTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeTextField()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initializeTextField()
    }
    
    func initializeTextField() {
        self.textAlignment = .left
        self.layer.cornerRadius = 5.0
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1.0
    }
    
}

class MyButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func initializeButton() {
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
        self.setTitleColor(.black, for: .normal)

    }
}


