//
//  ViewController.swift
//  UTest
//
//  Created by Mayank Daswani on 4/29/18.
//  Copyright © 2018 Mayank Daswani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let housebutton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont(name: "Zapfino", size: 25)
        button.setTitle("Pick your house", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let containerview: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()

    let houseimage: UIImageView = {
        let imageview = UIImageView(image: #imageLiteral(resourceName: "hogwarts_logo"))
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        self.view.addSubview(containerview)
        self.view.addSubview(houseimage)
        self.view.addSubview(housebutton)
        
        setupLayout()
        
        housebutton.addTarget(self, action: #selector(selectHouse(sender:)), for: UIControlEvents.touchUpInside)
        
    }
    
    @objc func selectHouse(sender: UIButton){
        print("hihihih")
        //self.presentedViewController(
    }

    private func setupLayout(){
        
        containerview.topAnchor.constraint(equalTo: view.topAnchor, constant: 0)
        containerview.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerview.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        containerview.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        
        houseimage.centerXAnchor.constraint(equalTo: containerview.centerXAnchor).isActive = true
        houseimage.centerYAnchor.constraint(equalTo: containerview.centerYAnchor).isActive = true
        houseimage.widthAnchor.constraint(equalTo: containerview.widthAnchor, multiplier: 0.5).isActive = true
        houseimage.heightAnchor.constraint(equalTo: containerview.heightAnchor, multiplier: 0.5).isActive = true
        
        housebutton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        housebutton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        housebutton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        housebutton.topAnchor.constraint(equalTo: containerview.bottomAnchor, constant: 250).isActive = true
        
    }
    
}

