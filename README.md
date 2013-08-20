#Ruby Fundamentals

###Submission

Please create a folder called "ruby_fundamentals" with a ruby file for each of the sections of exercises in the folder. Please make sure to commit after each exercise to practice using git.

###Intro

As you go through this tutorial, make sure that you are referencing [Stack Overflow](http://stackoverflow.com/), [Ruby docs](http://ruby-doc.org/core-2.0/), [API Dock](http://apidock.com/ruby), [Ruby Monk](http://rubymonk.com/learning/books/1-ruby-primer) explanations and using the [Codecademy Ruby Glossary](http://www.codecademy.com/glossary/ruby) to really understand the fundamentals. 

#### IRB

IRB is a shell for programming in the object-oriented scripting language Ruby. The program is launched from a command line and allows the execution of Ruby commands with immediate response, allowing you to experiment with Ruby commands in real-time. Think of it as a developer’s sandbox, you can’t mess anything up here. Once you’ve installed Ruby you’ll be able to access IRB through Terminal or Command Prompt (depending on your operating system) by typing `irb`.

#### How To Google

90% of your time as a junior developer will be spent troubleshooting. Being able to get answers quickly from Google should be thought of as a core part of a developer's job.

Here are a couple things that have helped the Bitmaker Labs team along the way. First, it's all about using key query words. More than likely, you won't get it right on your first guess, so keep trying different things until you do. If you are looking for something well explained, as well as a good example, you should Google "[resource name] [concept]". For example, if I were looking to learn more about Array#each in Ruby I would Google "ruby monk array each" or "api dock array each". As soon as I found a result that looked promising, click it and use **"cmd + f"** to search for a particular word. For example, type "each" into that page search.

![Using search to find keywords](http://i.imgur.com/ZtZPypr.png)

##### Google Tips

A couple things to remember when googling:

1. Use 3 or 4 specific keywords or phrases (use resource names as keywords, i.e. "api dock ruby each", "ruby each")
2. Try a couple of different combinations
3. Look at the first 10 to 20 results each time

#####Resource Quality Hierarchy

You'll get better at knowing which resources are the best with time, but usually follow this order in quality:

1. API Documentation
2. Tutorials
3. Stack Overflow
4. Blog Articles

#####Stack Overflow Tips

You'll find the majority of the bugs in your code will have already occurred in someone else's code and if you're lucky, they will have posted their problem to Stack Overflow. When going through Stack Overflow, try to look to see if the problem they are having is quite similar to yours. As soon as you believe it is, go to the answer looking for a) a good example b) a good explanation. Some general guidelines to decide the quality of the post and answer are as follows:

1. Amount of votes and answers
2. Look at the recency of the article
3. Credibility of person who posted

##### Bookmarking Resources Tips

As you go through the program, you will find that the number and variety of resources you go through is massive. Try to develop a methodology to organize them early on. The process we use is as follows:

1. Create a folder called "Programming" or "Bitmaker Labs"
2. Create folders in the "Programming", organized by topic. For example, "Ruby" or "JavaScript"

#### Exercises

1. Create a Stack Overflow account
2. Create a folder for bookmarking resources
3. Optional - Create a Quora account to build your reputation

###Basic Data Types

We need to first understand the rules surrounding basic data types before we move onto more complicated data structures. In Ruby, everything is an object - integers, characters, text, arrays - everything.

####Numbers

Numbers without decimal points are called **integers**, and numbers with decimal points are usually called floating-point numbers or, more simply, **floats** (you must place at least one digit before the decimal point).

Ruby integers are objects of class **Fixnum** or **Bignum**. The Fixnum and Bignum classes represent integers of differing sizes. Both classes descend from Integer (and therefore Numeric). The floating-point numbers are objects of class Float, corresponding to the native architecture's double data type. The Complex, BigDecimal, and Rational classes are not built-in to Ruby but are distributed with Ruby as part of the standard library.

[Exercise: Maximum](http://www.rubeque.com/problems/maximum)  
[Exercise: Subtracting Out The Sugar](http://www.rubeque.com/problems/subtracting-out-the-sugar)  
[Exercise: Your Favorite and Mine, Fibonacci!](http://www.rubeque.com/problems/your-favorite-and-mine-comma--fibonacci-excl-)  
[Exercise: Happy Numbers](http://www.rubeque.com/problems/happy-numbers)  
[Exercise: Prime Factors](http://www.rubeque.com/problems/prime-factors)  

####Strings

String literals are sequences of characters between single quotation marks. You can create a new string by adding two strings together in Ruby, just like most other languages.

a. If **puts** is passed an object that is not a string, puts calls the ".to_s" method of that object and prints the string returned by that method.

b. In Ruby, strings are **mutable**. They can expand as needed, without using much time and memory. Ruby stores a string as a sequence of characters.

##### String Literals

One way to create a String is to use single or double quotes inside a Ruby program to create what is called a string literal. We've already done this with our "hello world" program. A quick update to our code shows the use of both single and double quotes.

```ruby
puts 'Hello world'
puts "Hello world"
```

So what difference is there between single quotes and double quotes in Ruby? In the above code, there's no difference. However, consider the following code:

```ruby
puts "Betty's pie shop"
puts 'Betty\'s pie shop'
```

Because "Betty's" contains an apostrophe, which is the same character as the single quote, in the second line we need to use a backslash to escape the apostrophe so that Ruby understands that the apostrophe is in the string literal instead of marking the end of the string literal. The backslash followed by the single quote is called an escape sequence.

##### Single Quotes

Single quotes only support two escape sequences.

\' – single quote
\\ – single backslash

Except for these two escape sequences, everything else between single quotes is treated literally.

##### Double Quotes

Double quotes allow for many more escape sequences than single quotes. They also allow you to embed variables or Ruby code inside of a string literal – this is commonly referred to as interpolation.

```ruby
puts "Enter name"
name = gets.chomp
puts "Your name is #{name}"
```

##### String Interpolation (revisit after Variables section)

Expression substitution is a means of embedding the value of any Ruby expression into a string using #{ and }:

```ruby
a = 20
b = 65
puts "The value of a is #{ a }." # The value is a is 20.
puts "The value of a is #{ b }." # The value is a is 65.
puts "The value of a plus b is #{ a + b}." # The value is a plus b is 85.
```

##### Escape sequences

Below are some of the more common escape sequences that can appear inside of double quotes.

\" – double quote
\\ – single backslash
\a – bell/alert
\b – backspace
\r – carriage return
\n – newline
\s – space
\t – tab

Try out this example code to better understand escape sequences.

```ruby
puts "Hello\t\tworld"
puts "Hello\b\b\b\b\bGoodbye world"
puts "Hello\rStart over world"
puts "1. Hello\n2. World"
```

[Exercise: Reverse](http://www.rubeque.com/problems/reverse)  
[Exercise: Hello World](http://www.rubeque.com/problems/hello-world)  
[Exercise: There's No Way This Works](http://www.rubeque.com/problems/there-quo-s-no-way-this-works)  
[Exercise: There's No Way This Works Version 2](http://www.rubeque.com/problems/there-quo-s-no-way-this-works-version-2)  
[Exercise: Brackets and Searches](http://www.rubeque.com/problems/brackets-and-searches)  
[Exercise: No Limit](http://www.rubeque.com/problems/no-limit)  

####Operators

##### && (and)

"&&" takes two values, and one on each side and returns the last value if neither are false or nil. If either value is false or nil, it will return the first value.

```ruby
5 && 10 # 5
false && 10 # false
5 && false # false
nil && false # nil
false && nil # false
```

##### || (or)

Both or and || return their first argument unless it is false, in which case they evaluate and return their second argument.

```ruby
puts nil || "Bitmaker Labs"  # "Bitmaker Labs"
puts false || "Bitmaker Labs"  # "Bitmaker Labs"
puts "ruby" || "Bitmaker Labs"  # "ruby"
```

##### ? :

In english, "ternary" is an adjective meaning "composed of three items." In a programming language, a ternary operator is simply short-hand for an if-then-else construct. Here is an example to be refactored using a ternary operator.

```ruby
 if number > 0
    "#{number} is positive"
  else
    "#{number} is negative"
  end 
```

In Ruby, ? and : can be used to mean "then" and "else" respectively. Here's the first example on this page re-written using a ternary operator.

```ruby
number > 0 ? "#{number} is positive" : "#{number} is negative"
```
[Exercise: && Versus And](http://www.rubeque.com/problems/-and--and--versus-and)  
[Exercise: Hiring Programmers - Boolean Expressions in Ruby](http://rubymonk.com/learning/books/1-ruby-primer/problems/50-hiring_programmers_ruby_boolean_expressions)  
[Exercise: Ternary Operator](http://www.rubeque.com/problems/ternary-operator)  

###Variables and Assignment

To store a number or a string in your computer's memory for use later in your program, you need to give the number or string a name. Programmers often refer to this process as assignment and they call the names variables. A variable springs into existence as soon as the interpreter sees an assignment to that variable.

```ruby
myvar = 'myvar is now this string'
myvar # myvar is now this string
```

It's best to think of variable assignment in Ruby as a pointer, the myvar variable is pointing to the "myvar is now this string". We have to point it at something else for it to be reassigned. See the below example to understand how Ruby deals with assignment:

```ruby
amount = 20
new_amount = amount
new_amount # 20
amount = "twenty"
amount # "twenty"
new_amount # 20
```

[Exercise: Shotgun Assignment](http://www.rubeque.com/problems/shotgun-assignment)

#### Operator and Assignment Shorthand

Programmers are lazy. If we can type less we will. Combining operators and assignment is one of the most commonly used shortcuts. For example:

```ruby
counter = counter + 1
```

is the same as

```ruby
counter += 1
```

##### += and -=

"+=" is the add AND assignment operator. It adds right operand to the left operand and assign the result to left operand.

"-=" is the subtract AND assignment operator, It subtracts right operand from the left operand and assign the result to left operand.

```ruby
amount = 30
amount -= 5
amount # 25
amount += 7
amount # 32
```

##### ||=

A common practice is to use || to assign a value to a variable only if that variable isn't already set. This can be written as:

```ruby
variable # undefined local variable or method 'variable for main:Object'
variable = variable || "default value"
```

or, more commonly, as:

```ruby
variable ||= "default value"
```

[Exercise: Or Equal](http://www.rubeque.com/problems/or-equal)

###Methods

If objects are like nouns, methods are like verbs. When one object calls a method on another, it is simply telling it what to do. A method, then, is simply programming jargon for something one object can do for another. 

####Built-in Methods

So you don't have to write every method from scratch, Ruby comes with a library of predefined methods. Some of the most helpful built-in ruby methods are the following: ".class, .inspect, .to_i, .to_s,". They work as follows:

```ruby
"Bitmaker Labs".class # String
12.class # Fixnum
nil.to_s # ""
nil.inspect # nil
"5.0".to_i # 5
```

####Defining Methods

Methods are defined using the keyword def followed by the method name. The method body is enclosed by this definition on the top and the word end on the bottom. By convention method names that consist of multiple words have each word separated by an underscore. It's also recommended that, as a convention, method names be in lower case. They can be defined as follows:

```ruby
def method_name
  1 + 1 # Code to be executed
end
```

To call a method in IRB, we simply write the following:

```bash
irb(main):001:0> method_name
=> 2
```

or in a Ruby script:

```ruby
method_name # 2
```

#### Implicit vs Explicit Return

Every method returns a value. If you don't specify a return keyword, the last line executed will be the return value. The **return** keyword specifies the object to be returned to the caller when the method has done its work. If no return keyword is specified, the object created by the last line in the method is automatically treated as the return value. A method must always return exactly one object.

```ruby
def new_method
 "The interpreter reads over me, but does nothing"
 return 25
  "The interpreter does not read me, because the return keyword above forces the interpreter to exit the method"
end
```

Note: If you have a "puts, print or p" statement as the last line in your method, when you call that method, it will return nil.

####Parameters

Method parameters are specified between parentheses following the method name. A method can accept any number of parameters (or none). This is simply jargon for the objects a method needs from the caller in order for it to do its job. 

```ruby
def reverse_sign(argument)
  -1 * argument # Code to be executed
end

reverse_sign(56) # -56
```

The reverse_sign method accepts one parameter or argument. In this case, it's an integer.

#### Variable Scope

Scope defines where in a program a variable is accessible. Ruby has four types of variable scope, local, global, instance and class. In addition, Ruby has one constant type. Each variable type is declared by using a special character at the start of the variable name as outlined in the following table.

To illustrate this point:

```ruby
def new_method(number)
 return number
end

new_method(number) # undefined local variable or method 'number' for main:Object
```

Notice that we're calling new_method with the variable "number" being passed in as a parameter. Let's look at the same example with "number" now defined.

```ruby
var_1 = 20

def new_method(var_2)
 return var_2
end

new_method(var_1) # 20
```

It should be very clear that "var_1" assigned to 20 is very different than the variable "var_2", which only exists as a placeholder within the definition of "new_method". When we call new_method(var_1) it is the equivalent of calling new_method(20).

#### Puts / Print / p 

As a beginner, it can be quite confusing as to where to put "puts" statements. Never put them at the end of a method as that method will return nil.

```ruby
def reverse_sign(an_integer)
  return 0 - an_integer
end

puts reverse_sign(100)
puts reverse_sign(-5)
```

[Exercise: Method Acting](http://www.rubeque.com/problems/method-acting)  

###Control Flow

#### if

Ruby includes an if statement that can be used to manage a program's control flow. The statement takes a boolean expression and executes certain code depending on whether that expression evaluates to true or false. The syntax looks like this:

```ruby
if true
  puts "I get printed!"
end
I get printed!
```

#### else

If you want to provide two options for your if statement—that is, "do this thing or else do this other thing"—you can include an else statement, which works like so:

```ruby
x = 3
y = -4
def check_sign(number)
  if number > 0
    "#{number} is positive"
  else
    "#{number} is negative"
  end        
end

check_sign(x) # 3 is positive
check_sign(y) # -4 is negative
```

#### elsif

You can add additional branches to your if/else statement using elsif:

```ruby
x = 3
y = 4
if x > y
  puts "x is greater than y!"
elsif x < y
  puts "x is less than y!"
else
  puts "x equals y!"
end

x is less than y!
```

#### unless

You may find yourself expecting a boolean expression to be false rather than true. Instead of writing

```ruby
if x != 10
  puts "I get printed!"
end
You can instead use unless, which is equivalent to "if not":

unless x == 10
  puts "I get printed!"
end
I get printed!
```

### Arrays

A Ruby data type that holds an ordered collection of values, which can be any object. Ruby arrays can be created with either literal notation or the #new constructor.

Literal Notation
```ruby
x = [1, 2, 3, 4]
y = ["chunky", "bacon"]
x
=> [1, 2, 3, 4]
y
=> ["chunky","bacon"]

y.push("cartoon foxes")
y
=> ["chunky", "bacon", "cartoon foxes"]
```

####Using the Constructor

```ruby
z = Array.new(3, "Matz!")
z # ["Matz!", "Matz!", "Matz!"]
```

[Exercise: Bigger Element](http://www.rubeque.com/problems/bigger-element)  
[Exercise: Array Item Removal](http://www.rubeque.com/problems/array-item-removal)  
[Exercise: Version Sort](http://www.rubeque.com/problems/version-sort)  
[Exercise: Implement Array#flatten](http://www.rubeque.com/problems/implement-array-hash-flatten)  

### Hashes

Hashes are collections of key-value pairs. Like arrays, they have values associated with indices, but in the case of hashes, the indices are called "keys." Keys can be integers, strings, or anything hashable; symbols often make good hash keys. The values to which keys refer can be any Ruby object.

Example
```ruby
my_hash = {
  :key1 => "First value!",
  :key2 => "Second value!",
  :key3 => "Third value!"
}

my_hash[:key2] # "Second value!"
```

####Symbols

In Ruby, a symbol is simply a name used in your program. One of the main uses for Ruby symbols is as hash keys, especially if you would otherwise use the same string as a hash key over and over. Ruby will create an (almost) unlimited number of string instances for all your hash keys, but will only keep one copy of a symbol in memory at a time. This can really save memory for your programs in the long run.

Ruby symbols are created by prefixing a valid Ruby variable name or string with a colon, as in the examples below.

Example

```ruby
fox1 = :fox
fox2 = :fox

fox1.object_id # 430488
fox2.object_id # 430488

my_hash = {
  :key1 => "First value!",
  :key2 => "Second value!",
  :key3 => "Third value!"
}

my_hash[:key2] # "Second value!"
```

[Exercise: Related keys of Hash](http://www.rubeque.com/problems/related-keys-of-hash)  
[Exercise: The Little Hash Key that Could](http://www.rubeque.com/problems/the-little-hash-key-that-could)  

###Loops

Ruby includes a while loop that will execute a block of code as long as its condition is met.

#### while

```ruby
while true
  puts "I'm an infinite loop!"
end
counter = 1

while counter < 4
  puts "Counter currently at #{counter}."
  counter += 1 # Increment the counter
end
Counter currently at 1.
Counter currently at 2.
Counter currently at 3.
```

#### until

You may also want to have a loop execute while the boolean condition it checks is false. In this case, you can use an until loop, which is equivalent to "while not":

```ruby
counter = 3

until counter == 0
  puts "Counter currently at #{counter}."
  counter -= 1
end
Counter currently at 3.
Counter currently at 2.
Counter currently at 1.
```

#### .times and .each

The .times and .each methods are Ruby iterators, which means they perform an action a specified number of times.

The .times iterator will perform the action passed to it by a block (see above) the number of times specified by the number on which .times is called.

```ruby
3.times { puts "Chunky bacon!" }
Chunky bacon!
Chunky bacon!
Chunky bacon!
Example using .each
The .each iterator will perform the action passed to it by a block for each element in the object on which .each is called.

one_to_ten = (1..10).to_a

one_to_ten.each do |num|
  print (num**2).to_s + " "
end
1 4 9 16 25 36 49 64 81 100
```

###Objects and Classes

####What are Objects and Classes?

An object-oriented program involves classes and objects. A class is the blueprint from which individual objects are created. In object-oriented terms, we say that your bicycle is an instance of the class of objects known as bicycles.

Take the example of any vehicle. It comprises wheels, horsepower, and fuel or gas tank capacity. These characteristics form the data members of the class Vehicle. You can differentiate one vehicle from the other with the help of these characteristics.

A vehicle can also have certain functions, such as halting, driving, and speeding. Even these functions form the data members of the class Vehicle. You can, therefore, define a class as a combination of characteristics and functions.


#### Defining Classes (Objects)

To implement object-oriented programming by using Ruby, you need to first learn how to create objects and classes in Ruby.

A class in Ruby always starts with the keyword class followed by the name of the class. The name should always be in initial capitals. The class Customer can be displayed as:

```ruby
class Person
end
```

You terminate a class by using the keyword end. All the data members in the class are between the class definition and the end keyword.

Ruby provides four types of variables:

#### Local Variables

Local Variables: Local variables are the variables that are defined in a method. Local variables are not available outside the method. You will see more detail about method in subsequent chapter. Local variables begin with a lowercase letter or _.

####Instance Variables

Instance Variables: Instance variables are available across methods for any particular instance or object. That means that instance variables change from object to object. Instance variables are preceded by the at sign (@) followed by the variable name.

####Class Variables

Class Variables: Class variables are available across different objects. A class variable belongs to the class and is a characteristic of a class. They are preceded by the sign @@ and are followed by the variable name.

#### Global Variables

Global Variables: Class variables are not available across classes. If you want to have a single variable, which is available across classes, you need to define a global variable. The global variables are always preceded by the dollar sign ($).

#### Creating Objects (Classes)

```ruby
jim = Person.new
shelly = Person.new
```


#### Instance Methods

Instance methods only work on an instance and thus you have to create a new instance to use them (Person.new). Again, there are more ways to define instance methods than this, especially if you look into meta programming. The below is an example of an instance method.

```ruby
class Person
   def hello
      puts "Hello Ruby!"
   end
end
```

#### The self keyword

"self" references what scope you're in your program. For example:

```ruby
class Person
  puts self
end
# Person
```

When we output "self" to the screen, it prints "Person". If we were to put self in an instance method, "self" would now point to an instance of Person.

```ruby
class Person
  def new_method
    self
  end
end
p = Person.new # #<Person:0x007feaf118aef0>
p.new_method # #<Person:0x007feaf118aef0>
```

#### Class Methods

class Calculator
   def self.add
      puts "Hello Ruby!"
   end
end

#### Readers and Writers

Let's say you have a class Person.

```ruby
class Person
end

person = Person.new
person.name # => no method error
```

Obviously we never defined method name. Let's do that.

```ruby
class Person
  def name
    @name # simply returning an instance variable @name
  end
end

person = Person.new
person.name # => nil
person.name = "Dennis" # => no method error
```

Aha, we can read the name, but that doesn't mean we can assign the name. Those are two different methods. Former called reader and latter called writer. We didn't create the writer yet so let's do that.

```ruby
class Person
  def name
    @name
  end

  def name=(str)
    @name = str
  end
end

person = Person.new
person.name = 'Dennis'
person.name # => "Dennis"
```

Awesome. Now we can write and read instance variable @name using reader and writer methods. Except, this is done so frequently, why waste time writing these methods every time? We can do it easier.

```ruby
class Person
  attr_reader :name
  attr_writer :name
end
```

Even this can get repetitive. When you want both reader and writer just use accessor!

```ruby
class Person
  attr_accessor :name
end

person = Person.new
person.name = "Dennis"
person.name # => "Dennis"
```

Works the same way! And guess what: the instance variable @name in our person object will be set just like when we did it manually, so you can use it in other methods.

```ruby
class Person
  attr_accessor :name

  def greeting
    "Hello #{@name}"
  end
end

person = Person.new
person.name = "Dennis"
person.greeting # => "Hello Dennis"
```

That's it. In order to understand how attr_reader, attr_writer, and attr_accessor methods actually generate methods for you, read other answers, books, ruby docs.

[Exercises: Getters and Setters](http://www.rubeque.com/problems/getters-and-setters?solution_code=attr_accessor)  
[Exercise: Class Test](http://www.rubeque.com/problems/class-test)  
[Exercise: Queue Continuum](http://www.rubeque.com/problems/queue-continuum)  
[Exercise: Baby Got Stacks](http://www.rubeque.com/problems/baby-got-stacks)

#### Inheritance

Inheritance is a relation between two classes. We know that all cats are mammals, and all mammals are animals. The benefit of inheritance is that classes lower down the hierarchy get the features of those higher up, but can also add specific features of their own. If all mammals breathe, then all cats breathe. In Ruby, a class can only inherit from a single other class. Some other languages support multiple inheritance, a feature that allows classes to inherit features from multiple classes, but Ruby doesn't support this.

We can express this concept in Ruby - see the p033mammal.rb program below:

```ruby
class Mammal  
  def breathe  
    puts "inhale and exhale"  
  end  
end  
  
class Cat < Mammal  
  def speak  
    puts "Meow"  
  end  
end  
  
rani = Cat.new  
rani.breathe  
rani.speak
```

#### Class Hierarchy

A part of the class hierarchy is as shown in the figure below.

![!Wikipedia](http://rubylearning.com/images/class.png)

This diagram means that all objects inherit their methods from "Object".

For more practice, please use the following:

* [Ruby Monk](http://rubymonk.com/learning/books/1-ruby-primer)
* [Codecademy](http://www.codecademy.com/glossary/ruby)
* [Ruby Tutorial](http://www.tutorialspoint.com/ruby/)
* [Ladies Learning Code Slides](http://www.dess-e.com/ladies-learning-ruby#1)
* [Rubeque](http://www.rubeque.com/problems)
* [Ruby Koans](http://rubykoans.com/)
* [Practical Object Oriented Design](http://www.poodr.info/)
* [Test First Ruby](http://testfirst.org/learn_ruby)
* [Learn to Program](http://pine.fm/LearnToProgram/)
* [Eloquent Ruby](http://www.amazon.com/Eloquent-Ruby-Addison-Wesley-Professional-Series/dp/0321584104)
* [Code Quizzes: Ruby](http://www.codequizzes.com/)
* [Ruby Wiki Books](http://en.wikibooks.org/wiki/Ruby_Programming)
