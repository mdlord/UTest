//
//  OptionsViewController.swift
//  UTest
//
//  Created by Mayank Daswani on 4/30/18.
//  Copyright © 2018 Mayank Daswani. All rights reserved.
//

import UIKit

protocol HouseSelection {
    func didPickHouse(image: UIImage, name: String)
}

class OptionsViewController: UIViewController {
    
    var housedelegate: HouseSelection!
    
    let gryffindor: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setBackgroundImage(#imageLiteral(resourceName: "gryff"), for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Zapfino", size: 24)
        button.setTitle("Gryffindor", for: .normal)
        return button
    }()
    let slytherin: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .green
        button.setBackgroundImage(#imageLiteral(resourceName: "slyth"), for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Zapfino", size: 24)
        button.setTitle("Slytherin", for: .normal)
        return button
    }()
    let hufflepuff: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setBackgroundImage(#imageLiteral(resourceName: "huffle"), for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Zapfino", size: 24)
        button.setTitle("Hufflepuff  ", for: .normal)
        return button
    }()
    let ravenclaw: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setBackgroundImage(#imageLiteral(resourceName: "raven"), for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Zapfino", size: 24)
        button.setTitle("Ravenclaw", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        self.view.addSubview(gryffindor)
        self.view.addSubview(slytherin)
        self.view.addSubview(hufflepuff)
        self.view.addSubview(ravenclaw)
        
        setupLayout()
        
        gryffindor.addTarget(self, action: #selector(Gryffindor_buttonAction(sender:)), for: UIControlEvents.touchUpInside)
        ravenclaw.addTarget(self, action: #selector(Ravenclaw_buttonAction(sender:)), for: UIControlEvents.touchUpInside)
        slytherin.addTarget(self, action: #selector(Slytherin_buttonAction(sender:)), for: UIControlEvents.touchUpInside)
        hufflepuff.addTarget(self, action: #selector(Hufflepuff_buttonAction(sender:)), for: UIControlEvents.touchUpInside)
        
        
        // Do any additional setup after loading the view.
    }

    @objc func Gryffindor_buttonAction(sender: UIButton!){
        print("gryffindor")
        //housedelegate.didPickHouse(image: #imageLiteral(resourceName: "gryff_logo"), name: "Gryffindor")
    }
    @objc func Ravenclaw_buttonAction(sender: UIButton!){
        print("ravenlclaw")
        //housedelegate.didPickHouse(image: #imageLiteral(resourceName: "raven_logo"), name: "Ravenclaw")
    }
    @objc func Slytherin_buttonAction(sender: UIButton!){
        print("Slytherin")
        //housedelegate.didPickHouse(image: #imageLiteral(resourceName: "slyth_logo"), name: "Slytherin")
    }
    @objc func Hufflepuff_buttonAction(sender: UIButton!){
        print("Hufflepuff")
        //housedelegate.didPickHouse(image: #imageLiteral(resourceName: "huffle_logo"), name: "Hufflepuff")
    }
    
    private func setupLayout(){
        gryffindor.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        gryffindor.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
        gryffindor.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        gryffindor.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        
        slytherin.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        slytherin.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
        slytherin.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        slytherin.topAnchor.constraint(equalTo: gryffindor.bottomAnchor, constant: 0).isActive = true
        
        ravenclaw.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ravenclaw.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
        ravenclaw.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        ravenclaw.topAnchor.constraint(equalTo: slytherin.bottomAnchor, constant: 0).isActive = true

        hufflepuff.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        hufflepuff.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
        hufflepuff.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        hufflepuff.topAnchor.constraint(equalTo: ravenclaw.bottomAnchor, constant: 0).isActive = true
        
        
    }
    
}


