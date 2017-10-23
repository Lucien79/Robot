var robot = Robot(nom: "Luffy", vie: 200, vitMaxDeplacement: 6, position: (x: 5, y:10))
var robotAmi = Robot(nom: "Zoro", vie: 100, vitMaxDeplacement: 10, position: (x: 10, y: 20))
var robotAmi1 = Robot(nom: "Nami", vie: 150, vitMaxDeplacement: 2, position: (x: 0, y:0))
var robotAmi2 = Robot(nom: "Sanji", vie: 250, vitMaxDeplacement: 5, position: (x: 2, y: 3))

var robots: [Robot] = [robot,robotAmi,robotAmi1,robotAmi2]


for _ in 1...2{
    for unRobot in robots {
        unRobot.seDeplacerAleatoirement(repetition: 5)
        unRobot.sePresenter()
        print(unRobot.nombreCase)
    }
}



