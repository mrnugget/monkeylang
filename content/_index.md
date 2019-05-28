---
title: 'Monkey'
---

### What is Monkey?

Monkey is a programming language that *you can build yourself* by reading
through <a href="https://interpreterbook.com">Writing An Interpreter In Go</a>
and <a href="https://compilerbook.com">Writing A Compiler In Go</a>.

There is no official implementation of Monkey — it lives in these books and it's
up to you, the reader, to implement it. First as a tree-walking interpreter,
then as a bytecode compiler and virtual machine.

It looks like this:

```javascript
// Monkey has integers & arithmetic expressions...
let version = 1 + (50 / 2) - (8 * 3);

// ... and strings
let name = "The Monkey programming language";

// ... booleans
let isMonkeyFastNow = true;

// ... even arrays & hashes
let people = [{"name": "Anna", "age": 24}, {"name": "Bob", "age": 99}];

// It also has functions!
let getName = fn(person) { person["name"]; };
getName(people[0]); // => "Anna"
getName(people[1]); // => "Bob"

// Combined with conditionals, implicit and explicit returns and the fact that
// functions can be recursive gets you this:
let fibonacci = fn(x) {
  if (x == 0) {
    0
  } else {
    if (x == 1) {
      return 1;
    } else {
      fibonacci(x - 1) + fibonacci(x - 2);
    }
  }
};

// And the crown jewel in every Monkey implementation:
// 
// closures!
// 
// `newAdder` returns a closure that makes use of the free variables `a` and `b`:
let newAdder = fn(a, b) {
    fn(c) { a + b + c };
};
// This constructs a new `adder` function:
let adder = newAdder(1, 2);

adder(8); // => 11
```

### Books

<div class="book-section clearfix">
  <h4>Writing An Interpreter In Go</h4>
  <a href="https://interpreterbook.com"><img src="/images/waiig_cover.png" class="cover float-left mb-2 mr-2" alt="Cover for Writing An Interpreter In Go"></a>
  <a href="https://interpreterbook.com">Writing An Interpreter In Go</a> was published in 2016, its latest version (1.6) was released in 2019.
</div>

<div class="book-section clearfix">
  <h4>The Lost Chapter: A Macro System For Monkey</h4>
  <a href="https://interpreterbook.com/lost"><img src="/images/lost_chapter_cover.png" class="cover mb-2 mr-2 float-left" alt="Cover for The Lost Chapter"></a>
  <a href="https://interpreterbook.com/lost">The Lost Chapter: A Macro System For Monkey</a> was published in 2017 as a free addition to Writing An Interpreter In Go.
</div>

<div class="book-section clearfix">
  <h4>Writing A Compiler In Go</h4>
  <a href="https://compilerbook.com"><img src="/images/wacig_cover.png" class="cover mb-2 mr-2 float-left" alt="Cover for Writing A Compiler In Go"></a>
  <a href="https://compilerbook.com">Writing A Compiler In Go</a> was published in 2018, its latest version (1.1) was released in 2019.
</div>

### Monkeys In The Wild

<ul class="list-unstyled pl-2">

{{< monkey-implementation "fabrik42" "writing_an_interpreter_in_elixir" "Elixir">}}
Elixir implementation of an interpreter for the Monkey programming language.
{{< /monkey-implementation >}}

{{< monkey-implementation "prologic" "monkey-lang" "Go">}}
A step-by-step walk-through where each commit is a fully working part.
{{< /monkey-implementation >}}

{{< monkey-implementation "shioyama18" "monkey-wasm" "Rust">}}
Rust implementation of Monkey programming language from the book Writing an Interpreter in Go. This interpreter is also compiled into WebAssembly format so it can run on browser.
{{< /monkey-implementation >}}

{{< monkey-implementation "newenclave" "mico" "C++">}}
Mico ("Monkey" in catalan). Monkey language implementation done with C++. Including a ton of extensions:

* Modules
* Mutability
* For-loops
* Intervals
{{< /monkey-implementation >}}

{{< monkey-implementation "mreichelt" "monkey-dart" "Dart">}}
A fully working interpreter for the Monkey programming language as known from the book _Writing an Interpreter in Go_, written in Dart.
{{< /monkey-implementation >}}

{{< monkey-implementation "abs-lang" "abs" "Go" />}}

{{< monkey-implementation "tsuyoshiwada" "rs-monkey-lang" "Rust">}}
Monkey Programming Language written in Rust. Including *compilation to WASM* and an *online playground*
{{< /monkey-implementation >}}

{{< monkey-implementation "skx" "monkey" "Go">}}
This repository started life as the implementation written by gaufung, but it has now diverged significantly in terms of both features and implementation. Including:

* File I/O
* A standard library
* Postfix operators
* Function argument defaults

{{< /monkey-implementation >}}

{{< monkey-implementation "Rydgel" "monkey-rust" "Rust" />}}
{{< monkey-implementation "utatti" "monkey-rs" "Rust" />}}

{{< monkey-implementation "ronnieholm" "MonkeyLang" "C#" >}}
This repository contains a C# port of the Monkey programming language from the Writing an interpreter in Go book. Its code closely resembles that presented in the book, but written in idiomatic C# for the .NET Core runtime. Using the instructions below, the interpreter runs on both Windows, Mac, and Linux.
{{< /monkey-implementation >}}

{{< monkey-implementation "goby-lang" "goby" "Go" />}}
{{< monkey-implementation "ofux" "deluge" "Go" />}}
{{< monkey-implementation "abhinav-upadhyay" "cmonkey" "C" />}}
{{< monkey-implementation "ELD" "monkey-lang-go" "Go" />}}
{{< monkey-implementation "geovanisouza92" "geo" "Go" >}}
The **geo** programming language based on Monkey.

Special features:

* All functions are curried
* Scopes lives on blocks, no name clashes
* Pipe operator: the result of one expression becomes the last argument on a subsequent function call expression
* Unicode support
{{< /monkey-implementation >}}

{{< monkey-implementation "thosakwe" "monkey2dart" "Dart" />}}
{{< monkey-implementation "noraesae" "monkey-hs" "Haskell" />}}
{{< monkey-implementation "MrTraan" "monkey" "Go" />}}

</ul>

Built your own version of Monkey? Let me know!
