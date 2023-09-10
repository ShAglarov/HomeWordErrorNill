//
//  ViewController.swift
//  homework
//
//  Created by Shamil Aglarov on 10.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let sizeElements = (first: 50, heigth:  60, spacing: 25)
       // private lazy var sizeRegistrationElement = (sizeAllElements: 300, spacing: 25)
        
        private let contextView: UIView = {
            var view = UIView(frame: CGRect(x: 20, y: 270, width: 356, height: 323))
            view.backgroundColor = .white
            view.layer.cornerRadius = 20
            return view
        }()
        
        private lazy var registrationLabel: UILabel = {
            var label = UILabel(frame: CGRect(x: contextView.frame.origin.x-10,
                                              y: contextView.bounds.maxY+CGFloat(sizeElements.spacing),
                                              width: contextView.frame.width,
                                              height: 30))
            label.text = "Регистрация"
            label.textAlignment = .center
            return label
        }()

        override func viewDidLoad() {
            super.viewDidLoad()
            
            setupViews()
        }
        
        
        func setupViews() {
            
            view.backgroundColor = UIColor(red: 180/256, green: 180/256, blue: 180/256, alpha: 1)
            view.addSubview(contextView)
            
            createTextField(placeholder: "Email",
                            in: contextView,
                            withFrame: CGRect(x: 20,
                                              y: sizeElements.first,
                                              width: Int(contextView.frame.width) - 40,
                                              height: sizeElements.heigth)
            )
            createTextField(placeholder: "Пароль",
                            in: contextView,
                            withFrame: CGRect(x: 20,
                                              y: sizeElements.first + sizeElements.heigth + sizeElements.spacing,
                                              width: Int(contextView.frame.width) - 40,
                                              height: sizeElements.heigth)
            )
            createButton(title: "Войти",
                         in: contextView,
                         withFrame: CGRect(x: 20,
                                           y: sizeElements.first + 2 * sizeElements.heigth +  2 * sizeElements.spacing,
                                           width: Int(contextView.frame.width) - 40,
                                           height: sizeElements.heigth))
            contextView.addSubview(registrationLabel)
        }

        func createTextField(placeholder: String? = nil,
                             _ textField: UITextField = UITextField(),
                             in parentView: UIView,
                             withFrame frame: CGRect) {
            textField.frame = frame
            let paddingView = UIView(frame: CGRect(x: 0,
                                                   y: 0,
                                                   width: 10,
                                                   height: Int(textField.frame.height)))
            textField.placeholder = placeholder
            textField.leftView = paddingView
            textField.leftViewMode = .always
            textField.layer.cornerRadius = 10
            textField.backgroundColor = UIColor(red: 238/256,
                                                green: 240/256,
                                                blue: 248/256,
                                                alpha: 1)
            parentView.addSubview(textField)
        }
        
        func createButton(title: String? = nil,
                          _ button: UIButton = UIButton(),
                          in parentView: UIView,
                          withFrame frame: CGRect) {
            
            button.frame = frame
            button.setTitle(title, for: .normal)
            button.layer.cornerRadius = 10
            button.backgroundColor = UIColor(red: 96/256,
                                             green: 120/256,
                                             blue: 116/256,
                                             alpha: 1)
            parentView.addSubview(button)
        }
}

