import Foundation
class Robot {
   
    enum Direction {
        case haut, bas, droite, gauche
    }
    var nom: String
    var vie: Int
    var vitMaxDeplacement : Int
    var position : (x: Int, y: Int)
    var nombreCase = Int(arc4random_uniform(3)) + 1
    var tabDirection: [Direction] = [Direction.bas, Direction.gauche, Direction.haut, Direction.droite]
    
    init(nom: String, vie: Int, vitMaxDeplacement: Int, position:(x:Int,y: Int)) {
        self.nom = nom
        self.vie = vie
        self.vitMaxDeplacement = vitMaxDeplacement
        self.position = position
        
    }
    
    func sePresenter()  {
        print("Bonjour je m'appelle \(nom)). J'ai \(vie) point de vie. Je me déplace à \(vitMaxDeplacement) cases par seconde. Je suis à la case de coordonnées \(position).")
    }
    
    
    func seDeplacer(nombreCase: Int, direction: Direction)  {
        
        for _ in 1...vitMaxDeplacement {
        if nombreCase <= vitMaxDeplacement {
        
            switch direction {
                case .haut:
                    position = (x: 0, y: +nombreCase)
            
                case .bas:
                    position = (x:0, y: -nombreCase)
            
                case .droite:
                    position = (x: +nombreCase, y: 0)
            
                case .gauche:
                    position = (x: -nombreCase, y:0)
            }
        }else {
            print("Le deplacement maximal est de \(vitMaxDeplacement). Veuillez choisir un nombre entre 1 et 3")
        }
    }
    }
    
    func seDeplacerAleatoirement(repetition: Int)  {
        let randomIndex = Int(arc4random_uniform(UInt32(tabDirection.count)))
        let direction = tabDirection[randomIndex]
        
        for _ in 1...repetition {
            if nombreCase <= vitMaxDeplacement {
            
                if direction == Direction.haut {
                    position = (x: 0, y: +nombreCase)
                }else if direction == Direction.bas {
                    position = (x:0, y: -nombreCase)
                }else if direction == Direction.droite {
                    position = (x: +nombreCase, y: 0)
                }else if direction == Direction.gauche {
                    position = (x: -nombreCase, y:0)
                }
           }
        }
    }
}



