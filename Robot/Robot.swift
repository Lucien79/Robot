class Robot {
    
    var nom: String
    var vie = 100
    var vitMaxDeplacement = 3
    var position = (x: 0, y: 0)
    
    
    init(nom: String) {
        self.nom = nom
    }
    
    func sePresenter()  {
        print("Bonjour je m'appelle \(nom)). J'ai \(vie) point de vie. Je me déplace à \(vitMaxDeplacement) cases par seconde. Je suis à la case de coordonnées \(position).")
    }
    
    func seDeplacer(nombreCase: Int)  {
        
        enum directionHBDG {
        case haut, bas, droite, gauche
        }
       
        var direction: directionHBDG
        init(direction: directionHBDG ) {
            self.direction = direction
        }
        
        if nombreCase <= vitMaxDeplacement {
        
            switch direction {
                case.haut:
                    position = (x: 0, y: +nombreCase)
            
                case.bas:
                    position = (x:0, y: -nombreCase)
            
                case.droite:
                    position = (x: +nombreCase, y: 0)
            
                case.gauche:
                    position = (x: -nombreCase, y:0)
            }
        }else {
            print("Le deplacement maximal est de \(vitMaxDeplacement). Veuillez choisir un nombre entre 1 et 3")
        }
    }
}

