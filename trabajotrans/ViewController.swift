//
//  ViewController.swift
//  trabajotrans
//
//  Created by Maestro on 17/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var res: UIButton!
    @IBOutlet weak var iniciar: UIButton!
    @IBOutlet weak var password_label: UITextField!
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var usuario_label: UITextField!
    @IBOutlet weak var usuario: UILabel!
    @IBOutlet weak var face: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2.0, animations: {
            self.usuario_label.center.x += 300
            self.face.alpha = 1
         self.password_label.center.x += 300
            self.usuario.transform =
                CGAffineTransform(rotationAngle: CGFloat( 90.0 * M_PI / 90.0))
            self.password.transform =
                CGAffineTransform(rotationAngle: CGFloat( 90.0 * M_PI / 90.0))
         
        })
    
        UIView.animate(withDuration: 2.0 , delay: 2.0 , options: [], animations: {
            self.usuario.transform =
                CGAffineTransform(rotationAngle: CGFloat( 180.0 * M_PI / 90.0))
            self.password.transform =
                CGAffineTransform(rotationAngle: CGFloat( 180.0 * M_PI / 90.0))
        }, completion: nil)
    
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
    
        self.face.alpha = 0
        self.usuario_label.center.x -= 300
        self.password_label.center.x -= 300

        
        
    }
    
    

}

