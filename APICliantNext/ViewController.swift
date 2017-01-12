//
//  ViewController.swift
//  APICliantNext
//
//  Created by 松下慶大 on 2017/01/12.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import UIKit
import APIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let viewModel = BlogsViewModel()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        registerCell()
        bind()
        viewModel.getBlogsInBackground(1, page: 1)
    }
    
    private func bind() {
        viewModel.blogs.asDriver().drive(tableView.rx_itemsWithCellIdentifier("BlogCell")) { _, blog, cell in
            let cell = cell as! BlogCell
            cell.fillWith(blog)
        }.addDisposableTo(disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK Table View Delegate
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200
    }
    
    private func registerCell() {
        tableView.registerNib(UINib(nibName: "BlogCell", bundle: nil), forCellReuseIdentifier: "BlogCell")
    }

}

