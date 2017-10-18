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
}

