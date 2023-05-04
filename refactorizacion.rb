class Person
    attr_accessor :first, :last, :age
    def initialize(first,last,age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def birthday
        @age += 1
    end
end

class Student < Person
    def talk
        puts 'Aqui es la clase de programacion con Ruby?'
    end
    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Teacher < Person
    def talk
        puts 'Bienvenidos a la clase de programación con Ruby!'
    end
    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person
    def talk
        puts 'Aquí es la reunión de apoderados?'
    end
    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end

student1 = Student.new('Caro','Ace','24')
teacher1 = Teacher.new('Israel','Palma','36')
parent1 = Parent.new('Nacho','Gar','25')

puts student1.introduce
puts student1.talk

puts teacher1.introduce
puts teacher1.talk

puts parent1.introduce
puts parent1.talk
