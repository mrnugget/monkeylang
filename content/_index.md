---
title: 'Monkey'
---

### What is monkey?

Monkey is the programming language we build ourselves in <a href="https://interpreterbook.com">Writing An Interpreter In Go</a> and <a href="https://compilerbook.com">Writing A Compiler In Go</a>

It looks like this:

```javascript
// Integers & arithmetic expressions
let version = 1 + (50 / 2) - (8 * 3);

// Strings
let name = "The Monkey programming language";

// Booleans
let isMonkeyFastNow = true;

// Arrays & Hashes
let people = [{"name": "Anna", "age": 24}, {"name": "Bob", "age": 99}];

// Functions
let getName = fn(person) { person["name"]; };
getName(people[0]); // => "Anna"
getName(people[1]); // => "Bob"

// Recursive functions, conditionals, implicit and explicit returning of values
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

// Closures!

// `newAdder` returns a closure that makes use of the free variables `a` and `b`:
let newAdder = fn(a, b) {
    fn(c) { a + b + c };
};
// This constructs a new `adder` function:
let adder = newAdder(1, 2);

adder(8); // => 11
```


### Books

#### Writing An Interpreter In Go

<a href="https://interpreterbook.com">Writing An Interpreter In Go</a> was
published in 2016, its latest version (1.6) was released in 2019.

#### The Lost Chapter: A Macro System For Monkey

<a href="https://interpreterbook.com/lost">The Lost Chapter: A Macro System For
Monkey</a> was
published in 2017 as a free addition to Writing An Interpreter In Go.

#### Writing A Compiler In Go

<a href="https://compilerbook.com">Writing A Compiler In Go</a> was
published in 2018, its latest version (1.1) was released in 2019.


### Monkeys In The Wild

* [github.com/fabrik42/writing_an_interpreter_in_elixir/](https://github.com/fabrik42/writing_an_interpreter_in_elixir/)
* [github.com/prologic/monkey-lang](https://github.com/prologic/monkey-lang)
* [github.com/shioyama18/monkey-wasm](https://github.com/shioyama18/monkey-wasm)
* [github.com/Bo0km4n/dummy-monkey](https://github.com/Bo0km4n/dummy-monkey)
* [github.com/mreichelt/monkey-dart](https://github.com/mreichelt/monkey-dart)
* [github.com/ledbutter/FsharpMonkeyInterpreter](https://github.com/ledbutter/FsharpMonkeyInterpreter)
* [github.com/abs-lang/abs/blob/master/README.md](https://github.com/abs-lang/abs/blob/master/README.md)
* [github.com/tsuyoshiwada/rs-monkey-lang](https://github.com/tsuyoshiwada/rs-monkey-lang)
* [tsuyoshiwada.github.io/rs-monkey-lang/](https://tsuyoshiwada.github.io/rs-monkey-lang/)
* [blog.wadackel.me/2018/rs-monkey-lang/](https://blog.wadackel.me/2018/rs-monkey-lang/)
* [github.com/skx/monkey/](https://github.com/skx/monkey/)
* [github.com/Rydgel/monkey-rust](https://github.com/Rydgel/monkey-rust)
* [github.com/utatti/monkey-rs](https://github.com/utatti/monkey-rs)
* [github.com/ronnieholm/MonkeyLang](https://github.com/ronnieholm/MonkeyLang)
* [github.com/goby-lang/goby](https://github.com/goby-lang/goby)
* [github.com/newenclave/mico](https://github.com/newenclave/mico)
* [github.com/ofux/deluge](https://github.com/ofux/deluge)
* [github.com/newenclave/mico/blob/master/drafts/tail_recursion.md](https://github.com/newenclave/mico/blob/master/drafts/tail_recursion.md)
* [github.com/abhinav-upadhyay/cmonkey](https://github.com/abhinav-upadhyay/cmonkey)
* [github.com/ELD/monkey-lang-go](https://github.com/ELD/monkey-lang-go)
* [github.com/geovanisouza92/geo?cn=cmVwbHk%3D](https://github.com/geovanisouza92/geo?cn=cmVwbHk%3D)
* [github.com/thosakwe/monkey2dart/blob/master/README.md](https://github.com/thosakwe/monkey2dart/blob/master/README.md)
* [github.com/noraesae/monkey-hs](https://github.com/noraesae/monkey-hs)
* [marcreichelt.de/monkey-shell/](https://marcreichelt.de/monkey-shell/)
* [github.com/chr4/writing_an_interpreter_in_rust](https://github.com/chr4/writing_an_interpreter_in_rust)
* [github.com/MrTraan/monkey](https://github.com/MrTraan/monkey)

Built your own version of Monkey? Let me know!
