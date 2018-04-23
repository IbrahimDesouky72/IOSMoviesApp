//
//  NetworkCalls.swift
//  MovieProject
//
//  Created by IbrahimDesouky72 on 4/18/18.
//  Copyright © 2018 IbrahimDesouky72. All rights reserved.
//

import Foundation
import  Alamofire

class NetworkCalls : NetworkProtocol {
    var movies = [MovieClass]()
    var movieResult = MovieResults()
    
    
    
    func getMovies(type: Int , presenter : AllMoviesPresenterProtocol) {
        let url: URL
        switch type {
        case 0:
            url = URL(string: "https://api.themoviedb.org/3/discover/movie?api_key=f6def6aa687f88e2c4bdac26cc09ee44&sort_by=popularity.desc")!
        case 1:
            url = URL(string: "https://api.themoviedb.org/3/discover/movie?api_key=f6def6aa687f88e2c4bdac26cc09ee44&sort_by=vote_average.desc")!
        default:
            url = URL(string: "https://api.themoviedb.org/3/discover/movie?api_key=f6def6aa687f88e2c4bdac26cc09ee44&sort_by=popularity.desc")!
        }
        
        Alamofire.request(url).responseJSON{ (response) in
            //print(response)
            
            let jsonData = response.data
            do{
                self.movieResult = try JSONDecoder().decode(MovieResults.self, from: jsonData!)
                self.movies = self.movieResult.results
                
                for movie in self.movies {
                    print (movie.id)
                    print(movie.original_title)
                }
                presenter.moviesCallBack(movies: self.movies)
                print("ana rage3 ")
                
                
            } catch {
                print("error")
            }
            
        }
        
        
        
        
       
        
        
    }
    
    
    
}
