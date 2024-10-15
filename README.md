# Get started running with dart

## What is dart? 

Dart is a programming language that is used to build web, server, desktop, and mobile applications. It is developed by Google and can be used to build applications for Android, iOS, Windows, Mac, Linux, and the web. Dart is an object-oriented, class-based, garbage-collected language with C-style syntax. It supports interfaces, mixins, abstract classes, reified generics, and type inference.

# Variables

-> Variables in dart stores a reference to an object that holds a certain value.


## Dart Comments: 

Dart comments comes in three categories: 

1. Single line comments: 
    
    -> these comments are used to write a short description of a code snippet or something short in your codebase that you need your users to focus on.
    -> the way they work, the dart compiler ignores everything that starts with [ // ] up to the end of the line

    ```dart
      // this is a  single line comment
    ```

2. Multi-line comments
    
    -> the multi-line comments can or are also used to provide descriptions or comments in the codebase but for them they allow you to span multiple lines. the way they work, the dart compiler ignores everything that are enclosed in the [ /*  */ ]

    ```dart
     /*
       this is a multi-line comment
     */
    ```
3. Documentation comments

    -> the documentation comments are used to document a specific code feature like functions, dart, top level variables or function parameters.
    -> here the dart compiler will ignore everything that starts with [ /// ] up to the end of the line  unless it's enclosed in brackets

    ```dart
        /// Multiple filter options
       ///
      /// Different [FilterBy]
        enum FilterBy {
              COMPANY,
              CITY,
              STATE
            }
    ```

## Dart's main() function: 

The main() function is the top-level function in every dart/flutter application.
-> from the main() function is where the app's execution starts, this function always returns `void` which means it returns or it's return type is void.

```dart
// arrow function approach
  void main() => runApp(MyApp);

// other approach
void main() {
  runApp(MyApp());
}
```

the main() function calls the `runApp()` method which then calls the `MyApp()` class constructor function [We will see that in flutter or later in classes].

[void]: void keyword shows or implies that our main function does not return anything or it's return type is nothing

## Referencing variables in Dart

In Dart, variables store references to a value

-> we can use `var` to declare a variable without specifying it's type, here when you declare a variable without a type, Dart will `infer` the type of the variable as the type of it's value.

```dart
  var name = "Dart"; // the type will be inferred to be of string type.
```

-> it's better to use the a type when declaring a variable, here it will be easy for us to read and understand the codes so as making our codebase type safe.

```dart
  String name = "Dart";
```

### Null values: 
-> We get `null` when we declare a variable and then we don't give it any value to store.

### Final and Const

-> we use final and const when the value of the variable won't change.
-> We use const for storing `compile-time` constants meaning constants that we know the value of the variable at compile-time.

-> We use final for values that are not known  during compile-time like `Futures`.

## Important  `Notes about Dart`: 

As you continue to learn about the Dart language, keep these facts and concepts in mind:

- **Everything is an object**: Everything you can place in a variable is an object, and every object is an instance of a class. Even numbers, functions, and `null` are objects. With the exception of `null` (if you enable sound null safety), all objects inherit from the `Object` class.

- **Version note**: Null safety was introduced in Dart 2.12. Using null safety requires a language version of at least 2.12.

- **Type inference**: Although Dart is strongly typed, type annotations are optional because Dart can infer types. In `var number = 101`, `number` is inferred to be of type `int`.

- **Null safety**: If you enable null safety, variables can't contain `null` unless you explicitly declare them as nullable. You can make a variable nullable by putting a question mark (`?`) at the end of its type. For example, a variable of type `int?` might be an integer or `null`. If you know that an expression never evaluates to `null` but Dart disagrees, you can add `!` to assert that it isn't `null` (and throw an exception if it is). Example: `int x = nullableButNotNullInt!`

- **Using `Object?`, `Object`, and `dynamic`**: When you want to explicitly allow any type, use `Object?` (if you've enabled null safety), `Object`, or—if you want to defer type checking until runtime—the special type `dynamic`.

- **Generic types**: Dart supports generic types, like `List<int>` (a list of integers) or `List<Object>` (a list of objects of any type).

- **Functions**: Dart supports top-level functions (such as `main()`), as well as functions tied to a class or object (static and instance methods, respectively). You can also create functions within functions (nested or local functions).

- **Variables**: Dart supports top-level variables, as well as variables tied to a class or object (static and instance variables). Instance variables are sometimes known as fields or properties.

- **Private identifiers**: Unlike Java, Dart doesn't have the keywords `public`, `protected`, and `private`. If an identifier starts with an underscore (`_`), it's private to its library. For details, see [Libraries and imports](https://dart.dev/guides/libraries).

- **Identifiers**: Identifiers can start with a letter or underscore (`_`), followed by any combination of those characters plus digits.

- **Expressions vs Statements**: Dart has both expressions (which have runtime values) and statements (which don't). For example, the conditional expression `condition ? expr1 : expr2` has a value of `expr1` or `expr2`. Compare that to an `if-else` statement, which has no value. A statement often contains one or more expressions, but an expression can't directly contain a statement.

- **Warnings and Errors**: Dart tools can report two kinds of problems: warnings and errors. Warnings are indications that your code might not work but don't prevent your program from executing. Errors can be either compile-time or run-time. A compile-time error prevents the code from executing at all; a run-time error results in an exception being raised while the code executes.
