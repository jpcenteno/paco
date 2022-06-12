
# PACO

A dead-simple template preprocessor for arbitrary languages that we coded while drunk.

The source code is ~30 lines, including whitespace.



## Demo

```html
<p>
  <?paco #! /usr/bin/env bash
  echo hello, "${USER}, from bash"
  ?>
</p>
<p>
  <?paco #! /usr/bin/env python3
  import os
  user = os.environ["USER"]
  print(f"hello, {user}, from python")
  ?>
</p>
```

```
❯ paco < sample.html
<p>
hello, janedoe, from bash
</p>
<p>
hello, janedoe, from python
</p>
```
## Usage

To start a code block, use `<?paco` followed by the shebang you would use in a normal script. To wrap it up, just write `?>

```
This is not a code block.

<?paco #! /bin/sh
echo "This is a code block"
?>

This is not a code block anymore.
```

The program takes no arguments. Just pipe the template code into the STDIN and it will spit out the resulting text to the STDOUT:


```
❯ paco < template > output
```
## Running Tests

LOL, no.
## Installation

IDK, just copy `paco` into your `$PATH` and mark it as executable.
## Authors

- Ezequiel Alvarez, [@clrnd](https://www.github.com/clrnd)
- Joaquín Centeno, [@jpcenteno](https://www.github.com/jpcenteno)


## License

```
MIT License

Copyright (c) 2022 Joaquín Perez Centeno, Ezequiel Álvarez

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
