# ConsCell [![Build Status][travis_b]][travis_url] [![Coverage Status][coveralls_b]][coveralls_url]

The [cons
cell](http://www.lispworks.com/documentation/lw70/CLHS/Body/26_glo_c.htm#cons)
implementation of [LispKit](http://map.squeak.org/package/656e63b6-3322-45cf-8e0a-97b2a3ce20ac/default).

## Requires

* [Squeak](http://www.squeak.org) 5.1,5.2a
* [Pharo](http://pharo.org/) 6.1,7.0

## Installing

To install the latest version execute the following:

```Smalltalk
Metacello new
  baseline: 'ConsCell';
  repository: 'github://charcodelimit/conscell-smalltalk/repository';
  load.
```

## How to use

Smalltalk arrays can be converted into lists consisting of ConsCell objects.
The ConsCell class furthermore implements list operations like iteration and
access of single cons cells.

```Smalltalk
| list sum |
list := #(1 2 3) asCons.
sum := 0.
list cellsDo: [:c | sum := sum + c car].
list collect: [:c | c + 1].
list append: 4.
list cadr.
list nth: 2.
list setcdr: nil.
```

## License

ConsCell is licensed under the [MIT License](https://opensource.org/licenses/MIT).


[travis_b]: https://travis-ci.org/charcodelimit/conscell-smalltalk.svg?branch=master
[travis_url]: https://travis-ci.org/charcodelimit/conscell-smalltalk
[coveralls_b]: https://coveralls.io/repos/github/charcodelimit/conscell-smalltalk/badge.svg?branch=master
[coveralls_url]: https://coveralls.io/github/charcodelimit/conscell-smalltalk?branch=master
