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

Did you also built your own version of Monkey? Add it to this list by [opening a pull request here](https://github.com/mrnugget/monkeylang/?tab=readme-ov-file#adding-a-new-implementation)!

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

<li class="mb-4 p-3 border border-light-grey rounded monkey-implementation">
  <div class="d-flex">
    <div>
    prologic's <a href="https://git.mills.io/prologic/monkey-lang">monkey-lang</a>
    </div>
    <div class="ml-auto">
      <span class="font-weight-light">Go</span>
    </div>
  </div>
  <hr class="mt-3 mb-3">
  <div class="description">
  <p>
    A Monkey implementation in Go that deviates from the book implementations by
    adding more built-in functions, objects, modules, more operators,
    assignments -- with the goal of building a self-hosting Monkey
    implementation.
  </p>
  </div>
</li>

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
{{< monkey-implementation "shejialuo" "cppmpiler" "C++" >}}
A Monkey implementation in C++ consistent with the book.
{{< /monkey-implementation >}}

<li class="mb-4 p-3 border border-light-grey rounded monkey-implementation">
  <div class="d-flex">
    <div>
    Frank Hoogerbeets' SharpBASIC (<a href="https://sharpbasic.com/go/sb.zip">.zip</a> / <a href="https://sharpbasic.com/go/sb.tar.gz">.tar.gz</a>)
    </div>
    <div class="ml-auto">
      <span class="font-weight-light">Go</span>
    </div>
  </div>
  <hr class="mt-3 mb-3">
  <div class="description">
  <p>
  The SharpBASIC interpreter/compiler is based on Thorsten Ball's Monkey
  language. But SharpBASIC is quite different and should be thought of as sort
  of a BASIC/Pascal hybrid, but more powerful than BASIC and less verbose than
  Pascal.
  </p>
  <p>The language is in its early stages. The interpreter works quite well and
  there are many working examples in the <code>/ex</code> folder.</p>
  <p>
  The main characteristic of SharpBASIC is that all definition blocks are
  marked by the keywords <code>OF..END</code>, while all execution blocks are
  marked by the keywords <code>DO..END</code>. Look at the <code>CONST</code>,
  <code>TYPES</code>, <code>IF</code>, <code>SELECT</code>, <code>FOR</code>,
  <code>WHILE</code> and <code>FUNCTION</code> examples to see how block
  statements are defined.
  </p>
  <p>
  See the <code>info.txt</code> file contained in the archive for
  information on how to use SharpBASIC.
  </p>
  </div>
</li>

<li class="mb-4 p-3 border border-light-grey rounded monkey-implementation">
  <div class="d-flex">
    <div>
    Noprianto's <a href="https://nopri.github.io/monkey.py">monkey.py</a>
    </div>
    <div class="ml-auto">
      <span class="font-weight-light">Python</span>
    </div>
  </div>
  <hr class="mt-3 mb-3">
  <div class="description">
  <p>
    A really neat single-file implementation of Monkey in Python with less than
    2000 lines of code. It is compatible with Python 2 and Python 3, starting
    from Python 2.3. The tests are also in one file and can be found here in
    <a href="https://github.com/nopri/nopri.github.io/blob/master/monkey_tests.py">monkey_tests.py</a>.
  </p>
  </div>
</li>

<li class="mb-4 p-3 border border-light-grey rounded monkey-implementation">
  <div class="d-flex">
    <div>
    Noprianto's <a href="https://nopri.github.io/Monkey.java">Monkey.java</a>/<a href="https://nopri.github.io/Monkey.jar">Monkey.jar</a>
    </div>
    <div class="ml-auto">
      <span class="font-weight-light">Java</span>
    </div>
  </div>
    <hr class="mt-3 mb-3">
    <div class="description">
      <p>
      This is a simple implementation of the Monkey interpreter in Java. It is compatible with Java 5.0 or later (developed in Java 8, with -source 1.5 -target 1.5, compilation/run test in Java 5.0, 8, and 13). Released as single-file source code, the code is not beautiful, but should work. A compiled Java archive (Monkey.jar) is also available for those who don’t want to compile themselves. Monkey.jar file is also compatible with Java 5.0.
      </p>
      <p>
      Need to run Monkey on older systems? Monkey.java can even be compiled in Java 5.0 running on Windows 95 (which was released in 1995). Monkey.jar (released version, compiled in Java 8) can also run on Windows 95. Running latest or released-25-years-ago operating systems? No problem, Monkey is always there.
      </p>
    </div>
</li>

{{< monkey-implementation "Delta456" "monkey_v" "V" >}}
An implementation of Monkey in V
{{< /monkey-implementation >}}

<li class="mb-4 p-3 border border-light-grey rounded monkey-implementation">
  <div class="d-flex">
    <div> Anthony Davis' <a href="https://langurlang.org/">langur</a> </div>
    <div class="ml-auto">
      <span class="font-weight-light">Go</span>
    </div>
  </div>
  <hr class="mt-3 mb-3">
  <div class="description">
  <p>
  Langur is based on Monkey, but underwent many changes and has features you won't find in Monkey. Some of it's features include:
  </p>
  <p>
    <ul>
	    <li>arbitrary precision decimal floating point for numbers</li>
	    <li>integer basex notation for any base from 2 to 36, such as <code>2x1010_0010</code> or <code>-11x123A</code></li>
	    <li>highly expressive <code>switch</code> expressions</li>
	    <li>semi-integrated regex</li>
	    <li>ISO 8601 date/time literals</li>
	    <li>duration literals</li>
	    <li>automated for loop over a list, hash, or string, or over a range</li>
	    <li>first-order functions, including closures</li>
	    <li>immutable or mutable declarations</li>
	    <li>chained string interpolation modifiers</li>
	    <li>both truncating and floor division operators; also remainder and modulus, exponent and root</li>
	    <li>optional database operators (null propagating)</li>
	    <li>catching exceptions without explicit try blocks</li>
    </ul>
  </p>
  <p>
  Anthony Davis also wrote a book about how he implemented some of langur's features in a virtual machine that's similar to the one in <a href="https://compilerbook.com">Writing A Compiler In Go</a>. You can find the book and a free sample at <a href="https://opcodebook.com/">opcodebook.com</a>.
  </p>
  </div>
</li>

{{< monkey-implementation "dannyvankooten" "monkey-c-monkey-do" "C" >}}
Interpreter for the Monkey programming language, in C. <i>With the best name for
a Monkey implementation yet.</i>
{{< /monkey-implementation >}}

{{< monkey-implementation "Kashiwara0205" "monkey-nim" "Nim">}}
An implementation of Monkey in Nim
{{< /monkey-implementation >}}

{{< monkey-implementation "kgabis" "ape" "C">}}
Ape is an offspring of Monkey, evolved to be more procedural with variables, loops, and more.

It's implemented in a single C file as a bytecode compiler and VM, including a mark-and-sweep garbage collector.
{{< /monkey-implementation >}}

{{< monkey-implementation "bradford-hamilton" "monkey-lang" "Go">}}

Implementation of Monkey based on the original implementation in Writing An Interpreter In Go and Writing A Compiler In go, except that it has a ton of additional features, such as: logical operators, comments, constants, postfix operators, line numbers in errors, a VS Code syntax highlighting extension (!) and much more.

{{< /monkey-implementation >}}


{{< monkey-implementation "CDThomas" "ts-monkey" "TypeScript">}}
A TypeScript implementation of Monkey along with an <a href="https://ts-monkey.now.sh/">in-browser editor, interpreter, and AST explorer</a>!
{{< /monkey-implementation >}}

{{< monkey-implementation "yhirose" "monkey-cpp" "C++">}}
A Monkey implementation in C++, using the cpp-peglib PEG library for the lexer and parser.
{{< /monkey-implementation >}}

{{< monkey-implementation "ludwigLanguage" "ludwig" "Go">}}
Ludwig is a Monkey dialect, an offspring, that has some really interesting differences to Monkey:

* No statements. Everything is an expression.
* Structs.
* Type identifiers, a first step towards enforcing a type system.
* For/while loops.
{{< /monkey-implementation >}}

{{< monkey-implementation "NightShade256" "prymate" "Python">}}
Monkey implemented in Python, with additional built-in functions, string comparisons, and modulo operator.
{{< /monkey-implementation >}}

{{< monkey-implementation "KennedyTedesco" "monkey" "PHP">}}
An implementation of the Monkey interpeter in PHP, with a damn cool logo.
{{< /monkey-implementation >}}

{{< monkey-implementation "chrispine" "crisp" "Go">}}
A really interesting twist on Monkey, barely recognizable as such: strongly, statically typed; lazy evaluation; pattern-matching, records; and more.
{{< /monkey-implementation >}}

{{< monkey-implementation "ghost-language" "ghost" "Go">}}
Ghost is a small, object-oriented, embeddable scripting language built from the foundations of the Monkey interpreter.
{{< /monkey-implementation >}}

{{< monkey-implementation "xavdid" "monkey-ts" "Typescript">}}
A Monkey implementation written in Typescript by <a href="https://xavd.id">David Brownman</a>. It's got extensive tests and is true-to-spec for now.
{{< /monkey-implementation >}}

{{< monkey-implementation "MarioAriasC" "monkey.kt" "Kotlin">}}
A complete Monkey implementation, including compiler, written in Kotlin
{{< /monkey-implementation >}}

{{< monkey-implementation "MarioAriasC" "monyet" "Crystal">}}
A complete Monkey implementation, including compiler, written in Crystal
{{< /monkey-implementation >}}

{{< monkey-implementation "MarioAriasC" "langur" "Scala">}}
A complete Monkey implementation, including compiler, written in Scala 3
{{< /monkey-implementation >}}

{{< monkey-implementation "MarioAriasC" "pepa" "Ruby">}}
A complete Monkey interpreter implementation written in Ruby 3
{{< /monkey-implementation >}}

{{< monkey-implementation "MarioAriasC" "bruno" "Python">}}
A complete Monkey interpreter implementation written in Python
{{< /monkey-implementation >}}

{{< monkey-implementation "MarioAriasC" "julieta" "Lua">}}
A complete Monkey interpreter implementation written in Lua
{{< /monkey-implementation >}}

{{< monkey-implementation "ryo-imai-bit" "Writing-An-Interpreter-In-Go-In-OCaml" "OCaml">}}
An implementation of Monkey interpreter in OCaml, including macros.
{{< /monkey-implementation >}}

{{< monkey-implementation "lucifer1004" "MonkeyLang.jl" "Julia">}}
A complete Monkey implementation (interpreter + compiler) in Julia, plus:

* Macros
* Mutable variables
* While loops (with local scopes) and break/continue statements
* A standalone syntax analyzer extracted from the original compiler
* A Julia transpiler which tranpiles Monkey to Julia, and behaves almost the same as a real Monkey
* Unified tests for all three backends (interpreter, compiler and Julia transpiler)
{{< /monkey-implementation >}}

<li class="mb-4 p-3 border border-light-grey rounded monkey-implementation">
  <div class="d-flex">
    <div>
    Noprianto's <a href="https://github.com/nopri/nopri.github.io/blob/master/monkey.singkong">monkey.singkong</a>/<a href="https://nopri.github.io/monkeyinterpreter.jar">monkeyinterpreter.jar</a>
    </div>
    <div class="ml-auto">
      <span class="font-weight-light">Singkong</span>
    </div>
  </div>
  <hr class="mt-3 mb-3">
  <div class="description">
  <p>
    Simple implementation of The Monkey Programming Language interpreter in Singkong Programming Language.
    <a href="https://nopri.github.io/singkong.html">Singkong</a> is based on
    <a href="https://github.com/nopri/nopri.github.io/blob/master/Monkey.java">Monkey.java</a>,
    which based on <a href="https://github.com/nopri/nopri.github.io/blob/master/monkey.py">monkey.py</a>.
    Monkey.singkong is also based on monkey.py.
  </p>
  </div>
</li>

{{< monkey-implementation "jaredh159" "monkey-swift" "Swift">}}
A Monkey implementation written in Swift.
{{< /monkey-implementation >}}

{{< monkey-implementation "ledbutter" "FsharpMonkeyInterpreter" "F#" >}}
A Monkey implementation in F# that is mostly functional.
{{< /monkey-implementation >}}

{{< monkey-implementation "Flipez" "rocket-lang" "Go">}}
Object-oriented variant inspired by Ruby. It offers "everything is an object", networking, JSON and more!
{{< /monkey-implementation >}}

{{< monkey-implementation "jongwonwoo" "SwiftyMonkey" "Swift">}}
An implementation of Monkey in Swift
{{< /monkey-implementation >}}


{{< monkey-implementation "Narasimha1997" "boson-lang" "Rust">}}
An interpreted, dynamically-typed, multi-threaded, general purpose hobby programming language written in Rust. Features:
* Multiple Data Types: char, int, float, string, array, hash-table, bytes and buffer
* Arithmetic, Logical operations
* Variables and Constants
* Control and Looping structures
* Functions and Lambda expressions
* Threads and Multi-threading
* Shell operator to run shell commands within the language statements
* Some basic built-in functions
* Iterators (pseudo iterators)
* Byte code generation, serialization and loading
{{< /monkey-implementation >}}

{{< monkey-implementation "oldjun" "pi" "Go">}}
Pi is an object-oriented, dynamically-typed programming language built from the foundations of the Monkey interpreter.
{{< /monkey-implementation >}}

{{< monkey-implementation "findley" "monkey-lang" "Rust" "gitlab.com">}}
A mostly vanilla implementation of Monkey in Rust with a [WASM powered web playground](https://monkey.findley.dev)
{{< /monkey-implementation >}}

{{< monkey-implementation "KtlTheBest" "ocaml_and_monkey" "OCaml">}}
An implementation of Monkey in OCaml, but doesn't require semicolons. That's about it.
{{< /monkey-implementation >}}

{{< monkey-implementation "nishant-sachdeva" "monkeyLang" "Rust">}}
An implementation of the Monkey Interpreter in Rust.
Contains the following features
* C-like syntax
* variable bindings
* Integers and booleans
* arithmetic expressions
* built-in functions extended to Arrays and Strings.
* first-class and higher-order functions
* closures
* a string data structure
* an array data structure
* a hash data structure
{{< /monkey-implementation >}}

{{< monkey-implementation "LeonSteinbach" "MonkeyLang-CSharp" "C#">}}
An implementation of an interpreter for Monkey in C#
{{< /monkey-implementation >}}

{{< monkey-implementation "LeonSteinbach" "MonkeyLang-Scala" "Scala">}}
An implementation of an interpreter and compiler for Monkey in Scala
{{< /monkey-implementation >}}

{{< monkey-implementation "thoqbk" "tholangforfun" "Java">}}
An implementation of an interpreter for Monkey in Java
{{< /monkey-implementation >}}

{{< monkey-implementation "dwayne" "elm-monkey-interpreter" "Elm">}}
A Monkey interpreter written in Elm with an online [playgound](https://elm-monkey-interpreter.netlify.app/).
{{< /monkey-implementation >}}

{{< monkey-implementation "Yag000" "chimpanzee" "Rust">}}
Monkey interpreter, compiler and formatter, in Rust, with added features.
{{< /monkey-implementation >}}

{{< monkey-implementation "wzid" "monkey-rs" "Rust">}}
Monkey Lang interpreter implemented in Rust
{{< /monkey-implementation >}}

{{< monkey-implementation "binoyjayan" "monkey-rs" "Rust">}}
Rust port of the monkey interpreter and the bytecode compiler.
It has a few more built-in functions, the unit tests and a way to trace bytecode execution.
{{< /monkey-implementation >}}

{{< monkey-implementation "NicoNex" "tau" "Go and C">}}
A functional interpreted programming language with a minimalistic design.
Tau differs from Monkey under many aspects but it was made possible thanks to Monkey.
Additional features from Monkey:
- All missing operators
- Loops
- Nice error messages
- Concurrency
- Pipes (like Go channels)
- Objects
- C/Tau interoperability
- Module/import system
{{< /monkey-implementation >}}

{{< monkey-implementation "mhanberg" "monkey" "Elixir">}}
Another implementation of Monkey in Elixir
{{< /monkey-implementation >}}

{{< monkey-implementation "umairsd" "swift-monkey-interpreter" "Swift">}}
A straightforward port of the Monkey Language interpreter in Swift. This has been tested and verified in Swift version 5.9.
{{< /monkey-implementation >}}

{{< monkey-implementation "madsravn" "java-interpreter" "Java">}}
An implementation of the Monkey Language made in Java. Code features most of the test suite from the book as well.
{{< /monkey-implementation >}}

{{< monkey-implementation "joshuanunn" "monkey-plusplus" "C++">}}
A cheeky simian-inspired interpreter and compiler duo for the Monkey programming language, written in C++. The language features are consistent with those in the original book implementations, and include full test suites and benchmarks.
{{< /monkey-implementation >}}

{{< monkey-implementation "bpetermann" "node-interpreter" "TypeScript">}}
An implementation of the Monkey Language in TypeScript.
{{< /monkey-implementation >}}

{{< monkey-implementation "moritz-tiesler" "monkey" "Go">}}
An implementation of the Monkey Language in Go.
Additional Features:
- Syntax sugar for Uniform Function Call Syntax and Trailing Lambda Syntax
- VS Code Language Server Extension
- VS Code Debugger Extension
{{< /monkey-implementation >}}


{{< monkey-implementation "grol-io" "grol" "Go">}}

Started as Monkey but now is [GROL](https://grol.io/), on github [github.com/grol-io/grol](https://github.com/grol-io/grol) with following notable changes:
- redesigned the token/lexer/parser with intern'ing
- no need for custom hash function, go maps of interface can be used for exact equality checks
- removed `let`
- removed requirement for `(` `)` in `if`
- use numerical (uint8) enum (and stringer) instead of strings
- use said codes for checking type etc everywhere (or even pointer == check thanks for interning)
- added float, use `+` for concat of arrays and merging of maps, etc...
- formatting / normalizing the source code (try it at the web site "run" or cli `-format`)
- and more... (see site)

<br>
Also features a WASM online version and a Discord bot.

{{< /monkey-implementation >}}

{{< monkey-implementation "JoshuaHenriques" "cixac" "Go">}}
The Cixac programming language is a passion project that I decided to pursue with inspiration and guidance from Thorsten Ball's book. Creating this interpreter is the first (out of three) implementation of my object-oriented dynamic programming language.
{{< /monkey-implementation >}}

{{< monkey-implementation "nilskch" "monkeylang" "Rust">}}
Rust implementation of the Monkey Programming Language with WASM based Playground.
{{< /monkey-implementation >}}

{{< monkey-implementation "MichaelB-99" "ts-monkey" "TypeScript">}}
A TypeScript implementation of both a tree walking interpreter and bytecode compiler & vm for Monkey. Extended to support new features including for-in loops, arrow functions, additional builtin functions and more.
{{< /monkey-implementation >}}

{{< monkey-implementation "Javier-varez" "monkey_interpreter" "Go and C++">}}
Pretty much the regular monkey language, with a few customizations:
- Supports range expressions like `0..123`.
- Supports variable-length arguments to functions with `fn(a, ...) { }` syntax.
- Supports builtin functions to turn a vararg object into an array, like `fn(a, ...) { a + len(toArray(...)) }`.
- Support a `contains` builtin that returns a boolean indicating if a `Hash` object contains a key.
- Closures capture the environment by value, not by reference, making it truly functional.
- Implements nicer error reporting, giving contextual information of where the error happened.
- Apart from the interpreter, it implements the bytecode VM and a transpiler to C++, which turns out to be the fastest.
- Saves the repl history using `liner`.
{{< /monkey-implementation >}}

{{< monkey-implementation "dottharun" "lilac" "C">}}
A MonkeyLang Interpreter written in C
{{< /monkey-implementation >}}

</ul>
