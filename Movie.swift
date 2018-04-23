//
//  Movie.swift
//  MovieProject
//
//  Created by IbrahimDesouky72 on 4/17/18.
//  Copyright © 2018 IbrahimDesouky72. All rights reserved.
//

import Foundation



class MovieClass : Decodable{
    let id:Int
    
    let title:String
    
    let poster_path:String
    
    let overview:String
    
    let release_date:String
    
    let vote_average:Float
    
    let backdrop_path:String?
    let original_title : String
    
    
    init() {
        
        id = 0
        
        title = ""
        
        poster_path = ""
        
        overview = ""
        
        release_date = ""
        
        vote_average = 0.0
        backdrop_path=""
        
        original_title = ""
       
        
        
        
        
    }
    
}
