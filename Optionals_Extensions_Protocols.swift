protocol MailingAddress {
	var address: String { get }
}
protocol TextRepresentable {
	func represent() -> String
}
extension Int: TextRepresentable {
	func represent()->String{
		return "\(self)"
	}
}
extension Person: TextRepresentable {
	func represent()->String{
		return "\(self.name), \(self.age) years old"
	}
}
extension Business: TextRepresentable {
	func represent()->String{
		return "\(self.name), \(self.address)"
	}
}

class Person: MailingAddress {
	var name: String
	var age: Int
	var street: String?

	var address: String {
		get {
			if let street = self.street{
				return "\(name), \(street)"
			}else {
				return "\(name), No address given"
			}
			
		}
	}
	init(name: String, age: Int) {
		self.name = name
		self.age = age
	}
}
struct Business: MailingAddress {
	var name: String
	var PObox: String?
	var street: String
	var address: String {
		get {
			if let PObox = self.PObox{
				return "\(name), \(street), \(PObox)"
			}
			return "\(name), \(street)"
		}
	}
	init(name: String, street: String) {
		self.name = name
		self.street = street
	}
}



let jacob = Person(name: "Jacob", age: 18)
jacob.street = "170 Centre St, Milton, Ma"
let apple = Business(name: "Apple, Inc.", street: "1 Infinite Loop, Cupertino, CA")

//*******************
let some_number = 10
print(some_number.represent())
print(jacob.represent())
print(apple.represent())
//*******************

//*******************
func print_address(something_that_conforms: MailingAddress){
  print(something_that_conforms.address)
}
print_address(apple)
print_address(jacob)
//*******************

//*******************************
if let street = jacob.street {
  print(street)
} else{
  print("Its nil!")
}
jacob.street = "170 Centre St"
if jacob.street != nil{
  print(jacob.street!)
} else{
  print("Its nil!")
}
//*******************************