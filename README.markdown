Par
===

Paragraph reformatter.

Description
-----------

Par is a lightweight binding for [par](http://www.nicemice.net/par/), a
handy Unix tool for formatting paragraphs.

Note that you need to have the command line tool installed. On Mac OSX,
it may be as easy as executing `sudo port install par`. On Debian, try
`sudo apt-get install par`.

Usage
-----

Check this couple tests to see how it works.

    class ParTest < Test::Unit::TestCase
      test "should format the paragraphs to the default 60 characters wide" do
        source = "Similique quibusdam consectetur provident sit aut in. Quia dolorem qui nihil expedita quod. Doloremque nobis et labore. Fugit facilis eveniet similique voluptatem dolore rerum laboriosam occaecati. Veniam voluptatem autem in."

        assert_equal <<-EOS, Par.new(source)
    Similique quibusdam consectetur provident sit aut in. Quia dolorem
    qui nihil expedita quod. Doloremque nobis et labore. Fugit facilis
    eveniet similique voluptatem dolore rerum laboriosam occaecati. Veniam
    voluptatem autem in.
    EOS
      end

      test "should relay the passed parameters to par" do
        assert_equal <<-EOS, Par.new("  #{source}", :p => 2)
      Similique quibusdam consectetur provident sit aut in. Quia dolorem
      qui nihil expedita quod. Doloremque nobis et labore. Fugit facilis
      eveniet similique voluptatem dolore rerum laboriosam occaecati. Veniam
      voluptatem autem in.
    EOS
      end
    end


Installation
------------

    $ gem install par

License
-------

Copyright (c) 2010 Damian Janowski & Michel Martens

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
