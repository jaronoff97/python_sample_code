enum Subject {
	case English
	case Programming
	case Language
	case Science
	case History
}
struct Homework {
	var subject: Subject
	var due_date: String
	var name: String
}
class Student {
	var name: String
	var age: Int
	var grade: String
	static let uniform_needed = false
	private var _homework: [Homework] = []
	public var homework:[Homework]{
		get {
			return _homework
		}
	}

	init(name:String, age:Int, grade:String) {
		self.name=name
		self.age=age
		self.grade=grade
	}
	func new_assignment(new_homework: Homework){
		self._homework.append(new_homework)
	}
}
let new_homework = Homework(subject: .Science, due_date:"Tuesday",name:"Finish Swift Tutorial")
let jacob = Student(name:"Jacob", age: 18, grade:"Senior")
jacob.new_assignment(new_homework)
print(jacob.homework)