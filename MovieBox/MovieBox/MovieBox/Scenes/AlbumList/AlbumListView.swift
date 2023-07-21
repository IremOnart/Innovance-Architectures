//
//  AlbumListView.swift
//  MovieBox
//
//  Created by İrem Onart on 21.07.2023.
//

import Foundation
import UIKit

final class AlbumlistView: UIView{
    
    private var albumList: [AlbumPresentation] = []
    @IBOutlet private weak var tableView: UITableView!
    
}


extension AlbumlistView: AlbumListViewProtocol {

    func updateAlbumList(_ albumList: [AlbumPresentation]) {
        self.albumList = albumList
        tableView.reloadData()
    }
//    Deprecated
//    func setLoading(_ isLoading: Bool){
//        UIApplication.shared.isNetworkActivityIndicatorVisible = isLoading
//    }
   
}

extension AlbumlistView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlbumListCell", for: indexPath)
        let album = albumList[indexPath.row]
        cell.textLabel?.text = album.title
        cell.detailTextLabel?.text = album.detail
        return cell
    }
    
    
}

extension AlbumlistView: UITabBarDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
