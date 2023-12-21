import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_markdown/flutter_markdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dart Programming Language',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Map> myProducts =
      List.generate(1, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "Takondwa Austen",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("takondwaasten@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Dart Programming Language',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.greenAccent,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
            ),
            itemCount: myProducts.length,
            itemBuilder: (BuildContext ctx, index) {
              return Center(
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 700,
                      color: Colors.blue,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Introduction()));
                        },
                        child: const Text(
                          "Introduction",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 700,
                      color: Colors.red,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DataTypes()));
                        },
                        child: const Text(
                          "Data Types",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 700,
                      color: Colors.purple,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Operator()));
                        },
                        child: const Text(
                          "Operator",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 700,
                      color: Colors.brown,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ControlFlowCode()));
                        },
                        child: const Text(
                          "Control Flow Code",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 700,
                      color: Colors.redAccent,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KeyFunction()));
                        },
                        child: const Text(
                          "Function",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 700,
                      color: Colors.amber,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => OOP()));
                        },
                        child: const Text(
                          "Object Oriented Programming",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 700,
                      color: const Color.fromARGB(255, 252, 100, 255),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Class()));
                        },
                        child: const Text(
                          "Classe's in Dart",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 700,
                      color: Colors.deepPurple,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ClassInheritance()));
                        },
                        child: const Text(
                          "Class inheritance",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 700,
                      color: Colors.redAccent,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ExceptionHandling()));
                        },
                        child: const Text(
                          "Exception Handling",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              );
            }),
      ),
    );
  }
}

class DataTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Data Types"),
      ),
      body: ListView(children: [
        SizedBox(
            height: 40,
            child: Text("Below is A List of Data Types",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ))),
        ListTile(
            leading: Icon(Icons.arrow_circle_right),
            title: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Boolean()));
              },
              child: const Text("Boolean",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 5,
                  )),
            )),
        ListTile(
            leading: Icon(Icons.arrow_circle_right),
            title: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Numbers()));
              },
              child: const Text("Numbers",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 5,
                  )),
            )),
        ListTile(
            leading: Icon(Icons.arrow_circle_right),
            title: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Strings()));
              },
              child: const Text("Strings",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 5,
                  )),
            )),
        ListTile(
            leading: Icon(Icons.arrow_circle_right),
            title: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Lists()));
              },
              child: const Text("List",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 5,
                  )),
            )),
        ListTile(
            leading: Icon(Icons.arrow_circle_right),
            title: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Maps()));
              },
              child: const Text("Map",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 5,
                  )),
            )),
      ]),
    );
  }
}

class ControlFlowCode extends StatelessWidget {
  const ControlFlowCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Text("Control Flow Code"),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => IterationStatements()));
                },
                child: Text("1.Iteration Statements"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConditionStatements()));
                },
                child: const Text("2.Condition Statements"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => JumpStatements()));
                },
                child: const Text("3.Jump Statements"),
              ),
            )
          ],
        ));
  }
}

class JumpStatements extends StatelessWidget {
  const JumpStatements({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: const Text("Jump Statements"),
      ),
      body: const Markdown(data: '''
 # **Jump Statements**
##### Jump Statements as the name suggests are used to transfer the control to other statements in the program when used.
## Types of Jump Statements
* Break\n
* Continue\n

# **Break Statements**
##### This is mainly used in switch Statements,Looping statements and if else statement.
##### It is used to terminate the execution of that particular statement and transfers the control to the following statement.

# Syntax
>>break;
### you can refer to above example for more info about break statement.
# **Continue Statement** 
###### It is mainly used in looping statements and Conditional Statements.
###### The continue statement allows you to skip the current iteration of the loop prematurely and start the next iteration immediately.
# Syntax
>continue;
# Example
>void main(){
int count =0; 
while(count<=10){
count++;
if(count==4){
print("Number 4 is skipped!");
continue;
}
print(count);
if(count==8){
print(count);
print("The execution has been broken!");
break;
}
}
}
# Output
>1
2
3
Number 4 is skipped
5
6
7
8
The execution has been broken!
### This is how break and continue statements are used.

'''),
    );
  }
}

class ConditionStatements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Conditional Statements"),
      ),
      body: const Markdown(data: '''
# Conditional Statements
---
###### Conditional Statements are Decision making Statements which evaluate a single or multiple test conditions which result in Boolean Value(True or False). The result of the test condition determines which statement block to be executed.
## Examples of conditional Statements:
---

1.If Statements\n
2.If else Statements\n
3.If else If Statements\n
4.Switch  case Statements\n

# **If Statement**
##### f Statement executes the statement block if and only if the particular test condition is true. 
# Syntax
>if(text condition){
  // statements block
}
# Example
---
>void main(){
  int age=22;
  if(age>18){
    print("Your age is greater than 18");
  }
}
# output
>> Your age is greater than 18
# **If else Statements**
###### If Else statement is similar to If Statement only additional part is when the Test Condition is evaluated as False then it executes another statement block unlike If Statement where the statement block will be skipped if the test condition is evaluated as False.
# Syntax
>if(text condition){
  // statements block 1
}else{
  // statements block 2
}
# Example
>void main(){
  int m=10;
  int n=25;
  if(m>x){
    print("m is greater than n");
  }else{
    print("n is greater than m");
  }
}
# Output
>n is greater than m
# **If else if statements**
##### If else if statement includes alternative test conditions such that if the first test condition is True then it will execute the if statement and skip all the rest test conditions and vice versa.
# Syntax
---
>void main(){
  // statement block 1
}else if{
  // statement block 2
}else{
  // statement block 3
} 

# Example 
>void main(){
  var t=5;
  if(t>10){
    print("t is greater than 5);
  }else if(t<10){
    print("t is less than 10");
  }else{
    print("t is unknown variable");
  }
}
# **Switch Case Statements**
##### These statements are similar to if conditions according to there functions but have different structures.
##### The statement block of the particular case which is evaluated as true is executed. If all the case statements are evaluated as False then the statement block of the default case will be executed.
# Syntax
> switch(text condition){
  case value:
  {
 // statement block   
  }
  break;
  case value2:
  {
  // statement block  
  }
  break;
  case value2:
{
  // statement block
}
break;
}
# Example
> void main(){
  var number=4;
switch(number){
  case 1:
  {
    print("the number is 1.");
  }
  break;
  case 2:
  {
    print("the number is 2")
  }
  break;
  case 3:
  {
   print("the number is 3."); 

  }
  default:
  {
    print("The number is other than 4");
  }
}
# Output
>The number is other than 4,

##### The output above comes due to because the number is not 1,2,or 3 and the default statements get executed.




'''),
    );
  }
}

class IterationStatements extends StatelessWidget {
  const IterationStatements({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Iteration Statements"),
      ),
      body: const Markdown(data: '''
# Iteration Statements
--- 
These are looping statements.They are used to execute set of statements repeatedly until a particular condition is fulfilled or satisified.
### Below are Examples of Iteration Statements
1. **For Loop(Definite Loop)**
2. **While Loop(Indefinite Loop)**
3. **Do While Loop (Indefinite Loop)**
---
# For Loop
---
# Syntax
---
>for(initialization;condition;increment/decrement){
  // statement block
}
# Example for For Loop:
>void main(){
  for(var i=1;i<=10;i++){
    if(i%2==0){
print(i);
    }
  }
}
# Output
---
>2
4
6
8
10

# example 2
---
>void main(){
  for(var k=10;k>=0;k--){
    print(k);
  }
}
# Output
---
>10
9
8
7
6
5
4
3
2
1
0
2. # While Loop
### This loop is based on boolean condition (true or false).
### This means if the text expression is true it will execute the statement block and it will evaluate again as long as the text expression is true.When expression is false it will exit from the loop.
## Syntax
---
>while(condition){
  // statements block
}
# Example 
---
>void main(){
  int t =0;
  while(t<8){
  print(t);
  t++;
  }
}
# Output
---
>0
1
2
3
4
5
6
7
### This code executes numbers from o up to 7 because (t<8) is true.

# Do-While Loop
---
### In Do-While Loop is similar to While Loop the difference is Do-While loop executes the statement block once even if the test expression or condition is false unlike While Loop which does not execute statement block if the test expression is false

# Syntax for Do-While Loop
---
>do{
  // statements block
}
while(condition);
# Example
>void main(){
  var k=3;
  do{
  print(k);
  k++;
  }
  while(k<=5);
}
# Output
>3
4
5




      '''),
    );
  }
}

class Operator extends StatelessWidget {
  const Operator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text("Dart Operators"),
        ),
        body: const Markdown(data: '''
# Dart Operators
---
### The Operators are special symbols that are used to carry out certain operations on the operands.
# Different types of operators in Dart
* Arithmetic Operators
* Relational Operators
* Type Test Operators
* Assignment Operators
* Bitwise Operators
* Logical Operators
* Conditional Operators
* Cascade Notation Operator 
\n**1.Arithmetic Operators**
---
#### This is class of Operators contain those operators which are used to perform arithmetic operation on the operands .
#### They are binary operators i.e they act on two operands.
# Examples
---
| Symbol | Name | Description |
|--------|------|-------------|
| +      | Additional | Add two operands |
| -      | Subtraction | subtract two operands |
|-expr   | Reverse the sign of expression |
| * | Multiply | Multiply two operands |
| / | Division | Divide two Operands |
| ~/ | Division | divide two operands but give output in integer |
| % | Modulus | give remainder of two operands |

# Example on how to use Arithmetic Operators 
---
> void main(){
  int x =10;
  int y = 20;
   var c = x + y;
  //  adding x and y
   print(c);
var t=y-x;
// subtracting x from y
print(t);
var r=-d;
print(r);
// using unary minus
var h=x*y;
print(h);
// using multiplication
var s=x/y;
print(s);
// using division
var e=x%y;
print(e);
// using remainder
}
# Output
---
>30,10,-10,200,1.2,0

2. **Relational Operators**
### This class of operators contain those operators which are used to preform relational operation on the operands.
### Table below shows all the relational operators.
| Symbol | Name | Description |
| ------| ----- | --------- |
| >     | less than | Check which operand is bigger and give result as boolean expression.|
| <     | greater than | Check which operand is smaller and give result as boolean expression.|
|>= | greater than or equalto |Check which operand is greater or equal to each other and give result as boolean expression. |
| <= | less than or equal to |Check which operand is less than or equal to each other and give result as boolean expression|
| == | equal to | 	Check whether the operand are equal to each other or not and give result as boolean expression.|
| !=| Not equal to | Check whether the operand are not equal to each other or not and give result as boolean expression.|
# Let's have an Example
---
>void main(){
int a = 2;
int b = 3;
//  Greater between a and b
var c = a > b;
print(c);
// Smaller between a and b
var d = a < b;
print(d);
// Greater than or equal to between a and b
var e = a >= b;
print(e);
// Less than or equal to between a and b
var f = a <= b;
print(f);
// Equality between a and b
var g = b == a;
print(g);
// unequality between a and b
//var h = b != a;
print(h);
}
# Output
---
> false,true,false, true,false, true
3. **Type Test Operators**
### This class of operators contain those operators which are used to perform comparison on the operands.
### Table below shows all the relational operators.
| Symbol | Name | Description |
|--------| -----| ----------- |
| is  | is | Gives boolean value true as output if the object has specific type |
| is! | is not | Gives boolean value false as output if the object has specific type|
# Example
>void main(){
  String a='Takondwa';
  int b = 5;
  print(a is String);
  print(b is !int);
}
# output
>true
false

4. ** Bitwise Operators**
### This class of operators contain those operators which are used to perform bitwise operation on the operands .
### Table below shows all the relational operators.
| Symbol | Name | Description |
| -------| -----| ------------|
| &      | Bitwise AND | Performs bitwise and operation on two operands.|
| |   | Bitwise OR | Performs bitwise or operation on two operands.|
| ^  | Bitwise XOR | Performs bitwise XOR operation on two operands. |
|~   | Bitwise NOT | Performs bitwise NOT operation on two operands.|
| << |Left Shift  |Shifts a in binary representation to b bits to left and inserting 0 from right.|
| >> | Right Shift | Shifts a in binary representation to b bits to left and inserting 0 from left.|

# Example
>void main()
{
int a = 5;
int b = 7;
// Performing Bitwise AND on a and b
var c = a & b;
print(c);
  // Performing Bitwise OR on a and b
  var d = a | b;
  print(d);
// Performing Bitwise XOR on a and b
var e = a ^ b;
print(e);
  // Performing Bitwise NOT on a
var f = ~a;
print(f);
// Performing left shift on a
var g = a << b;
  print(g);
// Performing right shift on a
var h = a >> b;
print(h);
}
# Output
>5
7
2
4294967290
640
0 
5. **Assignment Operators**
### This class of operators contain those operators which are use to assign value to operands .
# Table below show all Assignment Operators
| Symbol | Name | Description |
| ------- | ----- | -------- |
| = | Equal to | used  assign values to the expression or variable .|
| ??+ | Assignment Operator | Assign the value if is null |
# Example
>void main()
{
int a = 5;
int b = 7;
// Assigning value to variable c
var c = a * b;
print(c);
// Assigning value to variable d
var d;
d ? ? = a + b; // Value is assign as it is null
print(d);
// Again trying to assign value to d
d ? ? = a - b; // Value is not assign as it is not null
print(d);
}
# Output 
>35
12
12





'''));
  }
}

class KeyFunction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Function"),
        ),
        body: const Markdown(data: '''
# Functions
#### This is are set of statements that take inputs, do some specific computation and produces output.Functions are created when certain statements in the program and a function is created to replace them.

### Get to know a function:
# Syntax
>return_type function-name(parameters){
  // Body of function
  return value;
}
# Understanding the above Syntax:
* function_name defines the name of the function.
* return_type defines the datatype in which output is going to come.
return value defines the value to be returned from the function.
The function is called as:
# Syntax:
>function_name(argument_list);
* function_name defines the name of the function
* argument list is the list of the parameter that the function requires.
# Example
>void main(){
  var output=add(40,60);
  print(output);
}
int add(int x , int y){
  int result = x+y;
  return result;
}
# output
>100
##### Some functions have parameters while others have no parameters
# Types of Parameters used in functions
**Required positional parameters.**\n
**Named parameters**\n
**Optional Named Parameters**\n
# Required positional parameters\n
##### It is a mandatory to pass values to required parameters during the function call.
# Syntax
>Function_name(data-type param_1,data_type param_2[...]){
// statements
}
# Example
>void main(){
  text_param(20,"This is a string"):
}
text_param(int n1,string s1){
  print(n1);
  print(s1);
}
# Output
>20
This is a string
# Optional Parameters
##### This are can be used when arguments need not be compulsorily passed for a function execution.
##### A parameter can be marked optional by appending a question mark to its name.
# Types of Optional Parameters
| Parameter | Description |
| --- | ----------- |
| Optional Positional Parameter | To specify optional positional parameters, use square [] brackets.
| Optional Named parameters | Unlike positional parameters, the parameter's name must be specified while the value is being passed. Curly brace {} can be used to specify optional named parameters.|
| Optional Parameters with default values |
# Example for Optional Positional Parameter
>String great(String name , String title){
    return "hello! \$name the \$title";
  }
  void main (){
    print(great("Takondwa","Programmer"));
  }
  # Output
  >hello! Takondwa the programmer
  # Example of Named Parameters
  >>String great(String name,{String title=""}){
    if(title.isEmpty){
  return "hello\$name!";
    }
return "hello \$title \$name!";
  }
  
  In this example ,we chang the title from a positional parameter to a named parameter.The named parameter is also optional.Therefore ,you need to assign a default value to it.
  Also ,when calling the greet()function,you need to specify the parameter name like this:
  >String greet(String name, {String title = ''}) {
  if (title.isEmpty) {
    return 'Hello \$name!';
  }
  return 'Hello \$title \$name!';
}
void main() {
  print(greet('Takondwa', title: 'Programmer'));
}
##### This example calls the great() function and specifies the named parameter.
# Output
>Hello Programmer Takondwa!





'''));
  }
}

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 115, 235, 35),
        appBar: AppBar(
          title: const Text("Introduction"),
        ),
        body: ListView(
          children: [
            const ListTile(
              title: Text("About Dart Language"),
              subtitle: Text(
                  "Dart is a programming language designed by Lars Bak and Kasher Lund and developed by Google. It can be used to develop web and mobile apps as well as server and desktop applications. Dart is an object-oriented, class-based, garbage-collected language with C-style syntax."),
            ),
            const ListTile(
              title: Text(
                " why Dart Language",
              ),
              subtitle: Text(
                  "Learning Dart offers several advantages. It enables you to develop cross-platform applications using Flutter, opening up mobile, web, and desktop development opportunities."),
            ),
          ],
        ));
  }
}

class OOP extends StatelessWidget {
  const OOP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text("Object Oriented Programming"),
        ),
        body: const Markdown(
          data: '''
# Object Oriented Programming
#### This is a concept code structure based on objects and there interactions
#### Objects are like containers that carry important information.
###  OPP supports features like this :
* Classes and objects\n
* Encapsulation,\n
* Inheritance,\n 
* Polymorphism,\n 
* Abstraction.\n
# Example of classes and objects
>class Student{
  // set name and age
  String name="Takondwa";
  int age=22;
  // make print function
  void printStudent(){
    print("my name is \$name and I am \$age years old");
  }
  }
  void main(){
  // call class student
  Student student=Student();
  // Call Class Student's Function PrintStudent
  student.printStudent();
  }
  # Output
  >my name is Takondwa and I am 22 years old
  # Example 2
  >class Car{
string? name;
String? color;
String? gear;
void start(){
  print("Start engine")
}
void reverse(){
  print("Reverse the car");
}
void park(){
  print("Car parked");
}
  }
void main(){
  // car object
  Car car=Car();
  // car properties
  car.name="Nissan";
  car.color="brown";
  car.gear="Reverse";
// car function
  car.start();
  car.reverse();
  car.park();
}
# Output
>start engine
reverse the car
Car parked






''',
        ));
  }
}

class Class extends StatelessWidget {
  const Class({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: const Text("Classes in Dart Programming"),
        ),
        body: const Markdown(data: '''
# Classes In Dart Programming
##### Dart as a Object Oriented Programming language it also supports classes
#### Let's deep down into dart classes,constructors and named constructors.
# Syntax
##### A class can contain variables (properties), constructors and methods (behavior). class keyword is used to define a class in Dart.

> class ClassName{
  // variables
  // constructor
  // named constructors
  methods
}
#### where ClassName is the name by which this class is referenced.
# Example
#### Let us see the example below
>class Student{
  String? name;
  int? age;
}

##### This class has two variables: one is of type String and the other is of type integer.

# Example 
#####  Let us see the example below
>class Student{
  String? name;
  int? age;
  void printDetails(){
    print('\$name is \$age old');
  }
}
#### This class has two variables and one method. The method is 
>printDetails()

# Create an Object of this Class type
---
##### We can create as many number of objects of a Class type as required. And you can access variables and call methods using the dot operator.

##### Let us the Car class we defined in the previous example and create an object, access the variables and call methods.

# example
>class Student{
  String? name;
  int? age;
  void printDetails(){
    print('\$name is \$age years old');
  }
}
void main(){
  // create object
  Student student=Student();
  // set Variables
  student.name='Takondwa Austen';
  student.age=22;
  student.printDetails();
}

# Output
>Takondwa Austen is 22 years old

# Constructor
#### A constructor shares the syntax of a method, with same name as that of class and without any return type.

#### When you create an object of a class type, you can provide the values for parameters given in a constructor.

# Example
>class Car{
  String name;
  int miles;
  Car(name, miles){
  this.name=name;
  this.miles=miles;
  }
}
#### The number of parameters you provide for a constructor are your choice

# Example
>class Car{
  String? name;
  int? miles;
  // Constructor
  Car(name, miles){
  this.name=name;
  this.miles=miles;
  }
  void printDetails(){
  print("\$name has gone \$miles miles");
  }
}
void main(){
  // create object
  Car car=Car("Ford Mustang",5000);
// call method
car.printDetails();
}
# Output
>Ford Mustang has gone 5000 miles

# Named Constructors
#### You can define special type of constructors called named constructors in a class. The name of this named constructor is followed after the class name with a dot in the definition.

# Example
>class Car {
// variables
String? name;
int? miles;
// Constructor
Car(name, miles){
this.name=name;
this.miles=miles;
}
// named constructor
Car.fromName(name){
this.name=name;
this.miles=50000;
}
// method
void printDetails(){
print("\$name has gone \$miles miles");
}
}
void main(){
  Car car =Car.fromName("Ford Mustang");
  // call method
  car.printDetails();
}
# Output
---
>Ford Mustang has gone 50000 miles
#### In conclusion we have talked a lot about classes
'''));
  }
}

class ClassInheritance extends StatelessWidget {
  const ClassInheritance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: const Text("Class Inheritance"),
        ),
        body: const Markdown(data: '''
# Class Inheritance
#### Class inheritance is similar to character inheritance in humans.A child inherit characters of his parent.
# Terminology used
* **Parent Class** :Is is the class whose properties are inherited b the child class.It is also known as a base class or superclass.
* **Child class** :It is the class that inherits the properties of other classes .It is also known as a deprived class or subclass.
# Syntax
>class parent_class{
  ...
}
class child_class extends parent_class{
  ...
}

# Example
---
> //creating a parent class
class Ndosha{
// creating a function
void output(){
  print("welcome to New Development Orders Smart,Huge and Admirable\nYou are inside output function");
}
}
// creating child class
class NdoshaChild extends Ndosha{
  // we are nor defining anything inside it ...
}
void main(){
  // creating object of NdoshaChild();
  // calling function inside NdoshaChild class
  var ndosha= new NdoshaChild();
  // calling function inside Ndosha(parent class)
ndosha.output();
}
# Output
>welcome to New Development Orders Smart,Huge and Admirable
You are inside output function

# **Types of Inheritance**
1.**Single Inheritance**: This inheritance occurs when a class inherits a single-parent class.\n
2.**Multiple Inheritance**:This inheritance occurs when a class inherits more than one parent class. **Dart doesn’t support this.**\n
3.**Multi-Level Inheritance**:This inheritance occurs when a class inherits another child class.\n
4.**Hierarchical Inheritance**: More than one classes have the same parent class.\n
# Important Points:
1. * Child classes inherit all properties and methods except constructors of the parent class.
2. * Like Java, Dart also doesn't support multiple inheritance.
# Example 2
>// dart program for multilevel inheritance
// creating parent class
class Ndosha{
  // creating a function
  void output1(){
    print("welcome to Ndosha!\nYou are inside the output function of Ndosha class");
  }
}
// creating child1 class
class NdoshaChild1 extends Ndosha{
 // creating a function 
void output2(){
print("welcome to ndosha!\nYou are inside the output function of Ndoshachild1 class");
}
}
// creating child2 class
class NdoshaChild2 extends NdoshaChild1{
  // we are not defining anything inside it ...
}
void main(){
  var ndosha=new NdoshaChild2();
  // calling function
  // inside Ndosha
  //(parent class of parent class)
  ndosha.output1();
  // calling function
  // inside NdoshaChild
  //(parent class)
  ndosha.output2();
}
# output
>welcome to Ndosha!
You are inside the output function of Ndosha class
welcome to ndosha!
You are inside the output function of Ndoshachild1 class

# Example 3
>// Dart program for Hierarchical inheritance
// creating parent class
class Ndosha{
  // create a function
  void output1(){
print("Welcome to ndosha!\nYou are inside output function of Ndosha class");
  }
}
class NdoshaChild1 extends Ndosha{
  // we are not defining 
  //anything inside it
}
class NdoshaChild2 extends Ndosha{
  // we are not defining anything inside it ...
}
void main(){
  // creating object
  // inside Ndosha(parent class)
  var ndosha1=new NdoshaChild1();
  ndosha1.output1();
  // creating object of NdoshaChild class
  var ndosha2= new NdoshaChild2();
  // calling function
  // inside Ndosha(parent class)
  ndosha2.output1();
}
# output
>Welcome to ndosha!
You are inside output function of Ndosha class
Welcome to ndosha!
You are inside output function of Ndosha class
'''));
  }
}

class ExceptionHandling extends StatelessWidget {
  const ExceptionHandling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("ExceptionHandling"),
        ),
        body: const Markdown(
          data: '''
# Exception Handling in Dart
#### An exception is an error that occurs at runtime during program execution. When the exception occurs, the flow of the program is interrupted, and the program terminates abnormally. There is a high chance of crashing or terminating the program when an exception occurs. Therefore, to save your program from crashing, you need to catch the exception.
# syntax
>try{
  // your code here
}
catch(ex){
  // Exception here
}
# Try and Catch in Dart
* **Try** You can write the logical code the creates exceptions in the try block.
* **Catch** When you are uncertain about what kind of exception a program produces, then a catch block is used. It is written with a try block to catch the general exception.
# Example
---
>void main(){
  int x=18;
  int y=0;
  int res;
  try{
    res=x~/y;
    print("Result is \$ res");
    }
    // it returns the built-in exception related to the occurring exception
    catch(ex){
      print(ex);
  }
}
# Output
>Unsupported operation: Result of truncating division is Infinity: 18 ~/ 0

# Finally in dart Try Catch
#### The **finally** block is always executed whether the exceptions occur or not. It is optional to include the final block, but if it is included, it should be after the try and catch block is over.

#### **On** block is used when you know what types of exceptions are produced by the program.
# Syntax
>try{
  ....
}
on Exception{
  ....
}
catch Exception2{
  ....
}
finally{
  // code that should always execute whether an exception or not.
}
# Example
>void main(){
  int a=12;
  int b=0;
  int res;
  try{
    res=a~/b;
  }
  on UnsupportedError{
    print("Cannot divide by zero");
  }catch(ex){
    print(ex);
  }finally{
    print("Finally block always executed");
  }
}
# output
>Cannot divide by zero
Finally block always executed
# Throwing An Exception
#### The throw keyword is used to raise an exception explicitly. A raised exception should be handled to prevent the program from exiting unexpectedly.
# syntax
>throw new Exception_name() 
# Example
---
> void main(){
  try{
    check_account(-10);
  }catch(e){
    print("The account cannot be negative");
  }
}
void check_account(int amount){
  if(amount<0){
    throw new FormatException();// Raising explanation externally
  }
}
# Why Is Exception Handling Needed?
---
#### Exceptions provide the means to separate the details of what to do when something out of the ordinary happens from the main logic of a program. Therefore, exceptions must be handled to prevent the application from unexpected termination. Here are some reasons why exception handling is necessary:

* To avoid abnormal termination of the program.
* To avoid an exception caused by logical error.
* To avoid the program from falling apart when an exception occurs.
* To reduce the vulnerability of the program.
* To maintain a good user experience.
* To try providing Said and some debugging in case of an exception.
# How To Create Custom Exception In Dart
---
# syntax
---
>class YourExceptionClass implements Exception{
// constructors, variables & methods
}
# Example 1
##### This program throws an exception when a student’s mark is negative. You will understand implements in the object-oriented programming section.
>class MarkException implements Exception {String errorMessage() {
return 'Marks cannot be negative value.';
}
}
void main() {
try {
checkMarks(-20);
} catch (ex) {
print(ex.toString());
}
}
void checkMarks(int marks) {
if (marks < 0) throw MarkException().errorMessage();
}
# output
>Marks cannot be negative value.
# Example 2: How to Create & Handle Exception
#### This program throws an exception when you find the square root of a negative number
>import 'dart:math';
// custom exception class
class NegativeSquareRootException implements Exception {
  @override
  String toString() {
    return 'Sqauare root of negative number is not allowed here.';
  }
}
// get square root of a positive number
num squareRoot(int i) {
  if (i < 0) {
  // throw `NegativeSquareRootException` exception
throw NegativeSquareRootException();
  } else {
  return sqrt(i);
  }
}
void main() {
  try {
  var result = squareRoot(-4);
  print("result: \$result");
  } on NegativeSquareRootException catch (e) {
  Sprint("Oops, Negative Number: \$e");
  } catch (e) {
   print(e);
  } finally {
  print('Job Completed!');
  }
}
# Output
>Oops, Negative Number: Sqauare root of negative number is not allowed here.
Job Completed!

''',
        ));
  }
}

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text("Numbers"),
      ),
      body: const Markdown(data: '''
# Numbers
---
## The number in Dart Programming is the data type that is used to hold the numeric value .Dart numbers can be classified as:
### The *int data type* is used to represent *whole numbers*.
### The *double data type* is used to represent *fraction numbers*,
 ### The *num data type* is an inherited data type of the int and double types,
 # Example of int data type
 ---
 >void main(){
  int num1=30;
  print(num1);
 }
 # Output\n
 ---
 >30

 # Example of double data type
 ---
 >void main(){
  double num2=0.5;
  print(num2);
 }
 # Output\n
 ---
 >1.5
## If the fraction number is declared in int number the code will cause errors and vice versa

'''),
    );
  }
}

class Boolean extends StatelessWidget {
  const Boolean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Boolean"),
      ),
      body: const Markdown(data: '''
# Boolean
---
### This is a simple data type that represents Boolean values true and false,
### The keyword bool is used to represent a boolean literal in Dart.
----
# Example 
---
>void main(){
  String name1="Takondwa";
  String name2="Austen";
  bool val =(name1==name2);
  print(val);
}
# OutPut
---
>false
### The Output is false just because name1 is not equal to name2.
'''),
    );
  }
}

class Strings extends StatelessWidget {
  const Strings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("Strings"),
      ),
      body: const Markdown(data: '''
# Strings
---
### Dart String is a sequence of the characters.
### It is used to store the text value.
### The String can be created using single quotes or double-quotes.

## The syntax of the string declaration is given below.
# Syntax
---
>void main(){
  String name="Takondwa";
  String msg="Welcome to the world of programmers";
  print(name);
  print(msg);
}
# Output
---
>Takondwa

>Welcome to the world of programmers

### You can also use single qoutes like this:
>void main(){
  String warning='You have entered incorrect password'.
  print(warning);
}
# Output
---
>You have entered incorrect password
### If you want to use Quotes in your text .Double Quotes are preferred
### You can do like this:
>void main(){
  String intro="I'm Takondwa Austen and I'm 22 year's";
  print(intro);
}
# Output
---
>I'm Takondwa Austen and I'm 22 year's


'''),
    );
  }
}

class Lists extends StatelessWidget {
  const Lists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text("Lists"),
        ),
        body: const Markdown(data: '''
# List
---
### This Data type is similar to arrays in other programming languages like *Java*.
### A List is used to represent a collection of objects .
### it is an ordered group of objects

# Example
---
>void main(){
  List names= new List(5);
  names[0]="Takondwa";
  names[1]="Cho";
  names[2]="Andrea";
  names[3]="Thoko";
  names[4]="Alex";
  print(names);
  print(names[1]);

}
# Output 
---
>[Takondwa,Cho,Andrea,Thoko,Alex]
>Cho
### In the first print statement the output is all the names while in the second print statement the output is only *Cho* because *Cho* is the only name in the index[2].
'''));
  }
}

class Maps extends StatelessWidget {
  const Maps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Maps"),
      ),
      body: const Markdown(data: '''
# Map
---

### This is an object that stores data in the form of a key-value pair      
### Each value is associated with its key, and it is used to access its corresponding value.
### In Dart Map ,each key must be unique ,but the same value can occur multiple times .
### The value of key can be accessed by using a square bracket([]).
# Map can be declared with these two methods:
---
* Using Map Literal
* Using Map constructors
---
### This how you can use Map Literals"
# syntax
---
>var map_name={
key1:Value,
key2:value,
key3:value3,

}
# Example 
---
>void main(){
var student={"name":"Takondwa","age":"22"};
print(student);
} 
# Output 
---
>{name:Takondwa,age:22} 
### You can add information in the Map in the way below:
>void main(){
var student={"name":"Takondwa","age":"22"};
student["course"]="medical laboratory sciences";
print(student);
# Output
---
>{name:Takondwa,age:22,course:Medical laboratory sciences}

# This is how you can use Map Constructors
# syntax
---
>var map_name=new map(),
### Then initialize the values.
>Map_name[key]=value;
          
# Example
---
>void main(){
var student=new Map();
student['name']='Andrea';
student['age']='20';
student['Status']='single';
student['course']='Nursing';
print(student);
}
---
# Output
>{name:Andrea,age:20,Staus:single,course:Nursing}
        '''),
    );
  }
}
