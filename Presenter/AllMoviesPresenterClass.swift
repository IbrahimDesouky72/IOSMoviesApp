//
//  AllMoviesPresenterClass.swift
//  MovieProject
//
//  Created by IbrahimDesouky72 on 4/18/18.
//  Copyright © 2018 IbrahimDesouky72. All rights reserved.
//

import Foundation

class AllMoviesPresenterClass : AllMoviesPresenterProtocol{
    let networkProtocol : NetworkProtocol
    let  allMoviesProtocol : AllMoviesPrtocol
    init(with : AllMoviesPrtocol){
        networkProtocol = NetworkCalls()
        allMoviesProtocol = with
        
    }
    func moviesCallBack(movies: [MovieClass]) {
       allMoviesProtocol.updateIU(moviesList: movies)
        
       // print(movies.count)
        
    }
    
    
    
    
    
    
    func getAllMovies(movieType : Int){
        
        networkProtocol.getMovies(type: movieType , presenter : self)
        print("presenter get all movies")
    }
    
    
    
    
    
    
}
