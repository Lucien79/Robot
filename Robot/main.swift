var robot = Robot(nom: "Luffy")
var robotAmi = Robot(nom: "Zoro")
var robotAmi1 = Robot(nom: "Nami")
var robotAmi2 = Robot(nom: "Sanji")

var robots: [Robot] = [robot,robotAmi,robotAmi1,robotAmi2]

robot.seDeplacer(nombreCase: 3)
for _ in 1...3{
    for unRobot in robots {
        unRobot.sePresenter()
    }
}



