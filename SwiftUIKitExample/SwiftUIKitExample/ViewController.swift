//
//  ViewController.swift
//  SwiftUIKitExample
//
//  Created by GwanhoKim on 2021/08/12.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let swiftUIController = UIHostingController(rootView: SwiftUIView(text: "Hi 3"))
        addChild(swiftUIController)
        swiftUIController.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(swiftUIController.view)
        NSLayoutConstraint.activate([
            swiftUIController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            swiftUIController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            swiftUIController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        swiftUIController.didMove(toParent: self)
    }

    @IBSegueAction func showSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: SwiftUIView(text: "Hi"))
    }

    @IBSegueAction func embedSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: SwiftUIView(text: "Hi 2"))
    }
    
    @IBAction func codeBaseSwiftUIVIew(_ sender: Any) {
        let swiftUIViewController = UIHostingController(rootView: SwiftUIView(text: "Hi 4"))
        navigationController?.pushViewController(swiftUIViewController, animated: true)
    }
}

