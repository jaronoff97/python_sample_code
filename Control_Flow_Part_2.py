students = ["Jacob", "Sam", "Corey", "Michael"]

num = 0
while num < len(students):
    print(students[num])
    num += 1

for student in students:
    print(student)

for num in range(0, 10):
    print(num)

list = ["string1", 10, "string2", 100]
if 10 in list:
    list.remove(list.index(10))
    list.insert(3, 300)
    for thing in list:
        print(thing)
