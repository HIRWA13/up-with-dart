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