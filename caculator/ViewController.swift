//
//  ViewController.swift
//  caculator
//
//  Created by Cntt22 on 4/20/18.
//  Copyright © 2018 Nhom12. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var so1: Double = 0
    var so2: Double = 0
    var pheptinh = 0
    var performingMath = false;
    //var z = false
    
    @IBOutlet weak var lbPhepTinh: UILabel!
    @IBOutlet weak var KetQua: UILabel!
    
    
    @IBAction func btnNumber(_ sender: Any) {
        
        if performingMath == true {
            KetQua.text = String((sender as AnyObject).tag)
            //so1 = Double(KetQua.text!)!
            performingMath = false
        }
            
        else {
            
        KetQua.text = KetQua.text!+String((sender as AnyObject).tag)
            //so1 = Double(KetQua.text!)!
        }
    }
    @IBAction func btnMath(_ sender: Any) {
        if ((sender as AnyObject).tag==11) {
            lbPhepTinh.text=""
            KetQua.text="0"
            //so1 = 0
            pheptinh = 0
        }
        else if((sender as AnyObject).tag==12)
        {
            KetQua.text = String(Int(KetQua.text!)!*(-1))
        }
        else if((sender as AnyObject).tag != 12 && (sender as AnyObject).tag != 18)
        {
            so1 = Double(KetQua.text!)!

            if ((sender as AnyObject).tag == 13) {
                lbPhepTinh.text="%"
            }
            if ((sender as AnyObject).tag == 14) {
                lbPhepTinh.text="/"
            }
            if ((sender as AnyObject).tag == 15) {
                lbPhepTinh.text="X"
            }
            if ((sender as AnyObject).tag == 16) {
                lbPhepTinh.text="-"
            }
            if ((sender as AnyObject).tag == 17) {
                lbPhepTinh.text="+"
            }
            if ((sender as AnyObject).tag == 19) {
                lbPhepTinh.text = "Sin("+String(so1)+")"
                KetQua.text = String(sin((M_PI*so1)/180))
            }
            if ((sender as AnyObject).tag == 20) {
                lbPhepTinh.text = "Cos("+String(so1)+")"
                KetQua.text = String(cos((M_PI*so1)/180))
            }
            if ((sender as AnyObject).tag == 21) {
                lbPhepTinh.text = "Tan("+String(so1)+")"
                KetQua.text = String(tan((M_PI*so1)/180))
            }
            if ((sender as AnyObject).tag == 22) {
                lbPhepTinh.text = "Sin("+String(so1)+")"
                KetQua.text = String(log10(so1))
            }
            if ((sender as AnyObject).tag == 23) {
                KetQua.text = String(M_PI)
            }
            if ((sender as AnyObject).tag == 24) {
                lbPhepTinh.text = "Sqrt("+String(so1)+")"
                KetQua.text = String(so1.squareRoot())
            }
            if ((sender as AnyObject).tag == 25) {
                lbPhepTinh.text = String(so1)+"^2"
                KetQua.text = String(pow(so1,2))
            }
            if ((sender as AnyObject).tag == 26) {
                lbPhepTinh.text = "10^"+String(so1)
                KetQua.text = String(pow(10,so1))
            }
            pheptinh = (sender as AnyObject).tag
            performingMath = true;
            //KetQua.text = "0"
        }
        else if((sender as AnyObject).tag==18)
        {
            so2=Double(KetQua.text!)!
            
            if(pheptinh==17)
            {
                KetQua.text = String(so1 + so2)
            }
            if(pheptinh==16)
            {
                KetQua.text = String(so1 - so2)
            }
            if(pheptinh==15)
            {
                KetQua.text = String(so1 * so2)
            }
            if(pheptinh==14)
            {
                KetQua.text = String(so1 / so2)
            }
            if(pheptinh==13)
            {
                KetQua.text = String(Double(KetQua.text!)! / 100)
            }
            //z = true
        }
    }
    
    @IBAction func btnPoint(_ sender: Any) {
        if((sender as AnyObject).tag == 10)
        {
            KetQua.text = KetQua.text!+"."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

