User.destroy_all

bugs = User.create(name: 'Bugs')
User.create(name: 'Daffy')
User.create(name: 'Porky')
mickey = User.create(name: 'Mickey', teacher: true)
User.create(name: 'Tweety')
User.create(name: 'Elmer')

Homework.destroy_all

hw1 = Homework.new(title: 'Ponder About Universe', question: 'What is the meaning of life?', due_date: 5.days.from_now)
hw2 = Homework.new(title: 'Life and You', question: 'Find the difference between 52 and 10', due_date: 7.days.from_now)
hw3 = Homework.new(title: 'Career and You', question: 'What do you want to be when you grow up?', due_date: 10.days.from_now)
hw4 = Homework.new(title: 'World History', question: 'What ended in 1896?', due_date: 10.days.from_now)

bugs.homeworks << hw1
bugs.homeworks << hw2
bugs.homeworks << hw3
bugs.homeworks << hw4

bugs.save!