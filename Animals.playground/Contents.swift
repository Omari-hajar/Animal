import UIKit

// create a class called Animal
class Animal{
    
    //Give Animal a property "name"
    var name: String
    
    var health: Int
    
    //Give Animal an initialization that takes in a name and sets the name property appropriately
    init(name: String){
        self.name = name
        //Give Animal a property "health" with a default value of 100
        self.health = 100
      
    }
    //Give the animal a displayHealth method
    func displayHealth() -> Int{
        return health
    }
}

// create a subclass of Animal called Cat
class Cat: Animal{
    //find a way to override health
    
    override init(name: String) {
        super.init(name: name)
        //Modify the Cat's health to be 150
        health = 150
    }
    
    //Give the Cat a method "growl" that prints to the screen "Rawr!"
    func growl(){
        print("Rawr!")
    }
    //Give the Cat a method "run" that prints to the screen "Running" and deducts 10 health
    func run(){
        health -= 10
        print("Running")
       // print("and reduced health \(health)")
    }
}

//create subclasses of Cat - Cheetah

class Cheetah : Cat{
    //Override the Cheetah's run method to print "Running Fast" and deduct 50 health
    override func run()  {
        if health < 50 {
            print("Cheetah is dead tired and need some sleep")
        } else{
            health -= 50
             print("Running Fast")
        }
     
     
    }
    //Add a sleep function to the Cheetah class that adds 50 health, make sure its health doesn't go over 200.
    func sleep() -> Cheetah {
        if health < 200 {
            health += 50
            
        } else{
            health = 200
            print("your health is full")
        }
        return self
    }
    
}


// create  subclasses of Cat - Lion

class Lion : Cat{
    
    //Override Lion's health to be 200
    
    override init(name: String) {
        super.init(name: name)
        health = 200
    }
    //Override the growl method of the Lion to make it print "ROAR!!!! I am the King of the Jungle"
    override func growl() {
        print("ROAR!!!! I am the King of the Jungle")
    }
}



//creating an object of Animal class
var animal = Animal(name: "Marky")
animal.health

//creating an object of Cat class
var cat = Cat(name: "Blacky")
cat.name
cat.health
cat.run()


//creating an object of Cheetah class
var cheeta = Cheetah(name: "Caty")
print("============================= Cheetah ===============================")
print(cheeta.displayHealth())
cheeta.run()
cheeta.run()
cheeta.run()
cheeta.run()

print(cheeta.displayHealth())
//test chaining
cheeta.sleep().sleep().sleep()
print(cheeta.displayHealth())

//cheeta.sleep()
//print(cheeta.displayHealth())
//
//cheeta.sleep()
//print(cheeta.displayHealth())
//
//cheeta.sleep()
//print(cheeta.displayHealth())
//
//cheeta.sleep()
//print(cheeta.displayHealth())


//creating an object of Lion class

var lion = Lion(name: "Simba")
print("============================= Lion ===============================")

lion.run()
lion.run()
lion.run()

lion.growl()


