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
