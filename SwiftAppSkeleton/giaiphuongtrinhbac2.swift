//
//  giaiphuongtrinhbac2.swift
//  SwiftAppSkeleton
//
//  Created by Duy Phuong on 5/18/17.
//  Copyright © 2017 Techmaster. All rights reserved.
//

import UIKit

class giaiphuongtrinhbac2: UIViewController {
    
    @IBOutlet weak var lbl_a: UITextField!
    @IBOutlet weak var lbl_b: UITextField!
    @IBOutlet weak var lbl_c: UITextField!
    
    @IBAction func acction_tinhtoan(_ sender: Any) {
        nhap()
        
    }

    @IBAction func acction_reset(_ sender: Any) {
        lbl_c.text = ""
        lbl_b.text = ""
        lbl_a.text = ""
    }
    
    @IBOutlet weak var tv_hienthi: UITextView!
    
    var a:Double!
    var b:Double!
    var c:Double!
    var giaiphuongtrinhbac2: PhuongTrinhBac2!
    var inkq: PhuongTrinhBac2!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func nhap()  {
        giaiphuongtrinhbac2 = PhuongTrinhBac2()
        a = Double(lbl_a.text!)!
        b = Double(lbl_b.text!)!
        c = Double(lbl_c.text!)!
        layketqua()
    }
    
    func layketqua() {
        inkq = PhuongTrinhBac2()
        do {
            let (x1, x2) = try inkq.phuongTrinhBac2(a: a, b: b, c: c)
            tv_hienthi.text = String("x1 = \(x1) , x2 = \(x2)")
        }
        catch PhuongTrinhBac2Error.voNghiem {
            tv_hienthi.text = "phương trình vô nghiệm"
        }
        catch PhuongTrinhBac2Error.aBangKhong {
            tv_hienthi.text = "a = 0.0 phương trình tuyến tính"}
        catch {
            tv_hienthi.text = "Lỗi không rõ lỗi gì"
        }
    }
   

}
