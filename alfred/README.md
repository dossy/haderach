Alfred.app Script Extension for kwisatz.hadera.ch
=================================================

Here is a simple [Alfred.app][] extension that makes it easy to use
the text from [kwisatz.hadera.ch][].  This requires the
[Alfred.app Powerpack][].

[alfred.app]: http://www.alfredapp.com/
[kwisatz.hadera.ch]: http://kwisatz.hadera.ch/
[alfred.app powerpack]: http://www.alfredapp.com/powerpack/

Building
--------

To build the extension from source (in case you want to modify it):

    $ bundle exec rake alfred:extension

Installation
------------

In **Alfred Preferences**, click on the **Extensions** tab.  Click
and drag the **kwisatz.hadera.ch.alfredextension** file to where it
says "Drop to Install".  Click the **Import** button in the dialog
that comes up next.  That's it!

Usage
-----

Trigger Alfred using your configured hotkey, and in the input dialog,
type in "kwisatz" followed by an optional verb and some numeric
parameters.  The extension will copy the resulting text into your
clipboard buffer, ready to be pasted wherever you like.

### Examples

* kwisatz 5

    One paragraph with a minimum of 5 words.

* kwisatz paragraph 5

    Same as above.

* kwisatz 3 6

    Three paragraphs with a minimum of 6 words each.

* kwisatz paragraphs 3 6

    Same as above.

* kwisatz title 5

    A title with a minimum of 5 words.
