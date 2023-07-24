//
//  AlbumListViewController.swift
//  MovieBox
//
//  Created by İrem Onart on 21.07.2023.
//

import Foundation
import UIKit
import MovieBoxAPI

final class AlbumListViewController: UIViewController {
    
    
    @IBOutlet private weak var tableView: UITableView!
    
    var viewModel: AlbumListViewModelProtocol! {
            didSet {
                viewModel.delegate = self
            }
        }
   
    private var albumList = [AlbumPresentation]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        viewModel.load()
      
      
        }
    
}

extension AlbumListViewController: AlbumListViewModelDelegate {
    
    func handleViewModelOutput(_ output: AlbumListViewModelOutput) {
        switch output {
        case .updateTitle(let title):
            self.title = title
        case .showAlbumList(let albumList):
            self.albumList = albumList
            tableView.reloadData()
        
        }
    }
    
    func navigate(to route: AlbumListViewRoute) {
        switch route {
        case .detail(let viewModel):
            let viewController = AlbumDetailBuilder.make(with: viewModel)
            show(viewController, sender: nil)
        }
    }
}

extension AlbumListViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albumList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlbumListCell", for: indexPath)
                let album = albumList[indexPath.row]
                cell.textLabel?.text = album.title
                cell.detailTextLabel?.text = album.detail
                return cell
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           tableView.deselectRow(at: indexPath, animated: false)
           viewModel.selectAlbum(at: indexPath.row)
       }
    
    
}


