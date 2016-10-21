//
//  Game.swift
//  Overwatch
//
//  Created by Joyce Matos on 10/21/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

struct Game {
    
    var heroes: [Hero] { return heroesForType() }
    var offenseCharacters: [Hero] = []
    var defenseCharacters: [Hero] = []
    var supportCharacters:[Hero] = []
    var tankCharacters: [Hero] = []
    var heroType: HeroType = .offense
    
    init() {
        createAllHeroes()
    }
    
    func heroesForType() -> [Hero] {
        
        switch heroType {
            
        case .offense:
            return offenseCharacters
        case .defense:
            return defenseCharacters
        case .support:
            return supportCharacters
        case .tank:
            return tankCharacters
        }
    }
    
}

extension Game {
    
    mutating func createAllHeroes() {
       
        
        for type in HeroType.allTypes {
            
            if type == .offense {
                for names in HeroName.heroes(with: type) {
                    offenseCharacters.append(Hero(name: names))
                }
            }
            if type == .defense {
                for names in HeroName.heroes(with: type) {
                    defenseCharacters.append(Hero(name: names))
                }
            }
            if type == .support {
                for names in HeroName.heroes(with: type) {
                    supportCharacters.append(Hero(name: names))
                }
            }
            if type == .tank {
                for names in HeroName.heroes(with: type) {
                    tankCharacters.append(Hero(name: names))
                }
            }
        }
    }
}

