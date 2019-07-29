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

Here is what Monkey looks like:

```javascript
// Integers & arithmetic expressions...
let version = 1 + (50 / 2) - (8 * 3);

// ... and strings
let name = "The Monkey programming language";

// ... booleans
let isMonkeyFastNow = true;

// ... arrays & hash maps
let people = [{"name": "Anna", "age": 24}, {"name": "Bob", "age": 99}];
```

It also has functions!

```javascript
// User-defined functions...
let getName = fn(person) { person["name"]; };
getName(people[0]); // => "Anna"
getName(people[1]); // => "Bob"

// and built-in functions
puts(len(people))  // prints: 2
```

And it has conditionals, implicit and explicit returns and recursive functions,
which means we can do this in Monkey:

```javascript
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
```

But the crown jewel in every Monkey implementation are closures:

```javascript
// `newAdder` returns a closure that makes use of the free variables `a` and `b`:
let newAdder = fn(a, b) {
    fn(c) { a + b + c };
};
// This constructs a new `adder` function:
let adder = newAdder(1, 2);

adder(8); // => 11
```

### The Monkey Canon

<div class="book-section clearfix">
  <p>
    <a href="https://interpreterbook.com"><img src="/images/waiig_cover.png" class="cover border float-right mb-2 ml-4" alt="Cover for Writing An Interpreter In Go"></a>
    <a href="https://interpreterbook.com">Writing An Interpreter In Go</a> was published in <b>2016</b>, its latest version (1.6) was released in 2019.
  </p>
  <p>
    The first book in the Monkey Canon defines the syntax of Monkey and
    describes its implementation as a tree-walking interpreter with the
    following features:
  </p>
  <ul>
    <li>Integers, booleans, strings, arrays, hash maps</li>
    <li>A REPL</li>
    <li>Arithmetic expressions</li>
    <li>Let statements</li>
    <li>First-class and higher-order functions</li>
    <li>Built-in functions</li>
    <li>Recursion</li>
    <li>Closures</li>
  </ul>
</div>

<hr class="invisible" />

<div class="book-section clearfix">
  <p>
    <a href="https://interpreterbook.com/lost"><img src="/images/lost_chapter_cover.png" class="cover border mb-2 ml-4 float-right" alt="Cover for The Lost Chapter"></a>
    <a href="https://interpreterbook.com/lost">The Lost Chapter: A Macro System For Monkey</a> was published in <b>2017</b> as a free (to read online or download) addition to <i>Writing An Interpreter In Go</i>.
  <p/>

  <p>It can be thought of as <i>Writing An Interpreter In Go</i>'s fifth chapter,
  since builds directly upon the previous four chapters and extends the Monkey interpreter
  as it stands at the end of the book.</p>

  <p><i>The Lost Chapter: A Macro System For Monkey</i> adds a fully-working Lisp-style <b>macro system</b> to Monkey, that's close to the way Elixir's macro system works.</p>
</div>

<hr class="invisible" />

<div class="book-section clearfix">
  <p>
    <a href="https://compilerbook.com"><img src="/images/wacig_cover.png" class="cover border mb-2 ml-4 float-right" alt="Cover for Writing A Compiler In Go"></a>
    <a href="https://compilerbook.com">Writing A Compiler In Go</a> was published in <b>2018</b> and its latest version (1.1) in came out in 2019.
  <p/>

  <p>
  This book is the sequel to <i>Writing An Interpreter In Go</i> and while it
  does not change its syntax and does not add any features, it changes the
  implementation of Monkey from a tree-walking interpreter into a bytecode
  compiler and virtual machine.
  </p>

  <p>
    At the end of the book, Monkey looks and behaves exactly as it did at the end
    of <i>Writing An Interpreter In Go</i>, except that <i>it's 3x faster!</i>
  </p>
</div>

### Monkeys In The Wild

Some readers love to take little detours when following along with the books: a
different implementation language, new features, a little twist on the syntax.

And since the code that's presented in the books is MIT licensed, everybody's
free to turn their Monkey implementation into whatever their imagination comes
up with and showcase it to the rest of the world.

Collected here are some of those interesting and cool Monkey implementations
readers have shared with me.

Did you also built your own version of Monkey? Let me know, just send me an email to: **me&nbsp;@&nbsp;thorstenball.com**

<ul class="list-unstyled pl-2 mt-5 mb-3">

{{< monkey-implementation "fabrik42" "writing_an_interpreter_in_elixir" "Elixir">}}
An implementation of Monkey in Elixir
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

{{< monkey-implementation "prologic" "monkey-lang" "Go">}}
A step-by-step walk-through where each commit is a fully working part.
{{< /monkey-implementation >}}

{{< monkey-implementation "michalholasek" "monkey-lang" "Typescript">}}
A complete Monkey implementation in Typescript
{{< /monkey-implementation >}}

{{< monkey-implementation "michalholasek" "monkey-lang-vm" "C#">}}
A full Monkey implementation of the bytecode compiler and VM from _Writing A Compiler In Go_ in C#
{{< /monkey-implementation >}}

{{< monkey-implementation "mreichelt" "monkey-dart" "Dart">}}
A fully working interpreter for the Monkey programming language as known from the book _Writing an Interpreter in Go_, written in Dart.
{{< /monkey-implementation >}}

{{< monkey-implementation "abs-lang" "abs" "Go" />}}

{{< monkey-implementation "tsuyoshiwada" "rs-monkey-lang" "Rust">}}
Monkey programming language written in Rust. Including *compilation to WASM* and an *online playground*
{{< /monkey-implementation >}}

{{< monkey-implementation "skx" "monkey" "Go">}}
This repository started life as the implementation written by gaufung, but it has now diverged significantly in terms of both features and implementation. Including:

* File I/O
* A standard library
* Postfix operators
* Function argument defaults

{{< /monkey-implementation >}}

{{< monkey-implementation "abhinav-upadhyay" "cmonkey" "C" >}}
A Monkey implementation in ISO C11 with additional features:

- The `%` modulo operator
- The logical `&&` and `||` operators
- While-loops
- A built-in `type()` function to determine the type of a Monkey value

{{< /monkey-implementation >}}

{{< monkey-implementation "Rydgel" "monkey-rust" "Rust" />}}
{{< monkey-implementation "utatti" "monkey-rs" "Rust" />}}

{{< monkey-implementation "ronnieholm" "MonkeyLang" "C#" >}}
This repository contains a C# port of the Monkey programming language from the Writing an interpreter in Go book. Its code closely resembles that presented in the book, but written in idiomatic C# for the .NET Core runtime. Using the instructions below, the interpreter runs on both Windows, Mac, and Linux.
{{< /monkey-implementation >}}

{{< monkey-implementation "goby-lang" "goby" "Go" />}}
{{< monkey-implementation "ofux" "deluge" "Go" />}}
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
{{< monkey-implementation "JonnyWalker81" "monkey_interpreter" "Rust" />}}
{{< monkey-implementation "rainliu" "monkey" "Rust" />}}
{{< monkey-implementation "zhuzilin" "monkey" "C++" >}}
A Monkey implementation in C++ with its own *mark-and-sweep garbage collector*
{{< /monkey-implementation >}}

</ul>

