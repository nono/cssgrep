cssgrep
=======

## Usage

```
cssgrep.rb <selector> [FILE...]
xpathgrep.rb <selector> [FILE...]
```

They search the named input FILEs (or standard input if no files are named, or
if a single hyphen-minus (-) is given as file name) for tags matching the CSS
or XPath selector and prints them.

Use `cssgrep.rb` with a CSS selector, or `xpathgrep.rb` if you prefer XPath
selectors.

Both are Ruby scripts using [Nokogiri](http://nokogiri.org/).
See http://nokogiri.org/tutorials/installing_nokogiri.html to install it.


## Example

```
% curl http://linuxfr.org/ | ./cssgrep.rb '#friends li:nth-child(even)'
<li><a href="http://www.agendadulibre.org/">Agenda du libre</a></li>
<li><a href="http://fr.lolix.org/">Lolix</a></li>
<li><a href="http://www.editions-eyrolles.com/Recherche/?q=linux">Eyrolles</a></li>
<li><a href="http://www.venividilibri.org/">Veni, Vedi, Libri</a></li>
<li><a href="http://www.linuxgraphic.org/">LinuxGraphic</a></li>
<li><a href="http://www.laquadrature.net/">La Quadrature du Net</a></li>
<li><a href="http://lea-linux.org">Lea-Linux</a></li>
```


## Credits

♡2013 by Bruno Michel. Copying is an act of love. Please copy and share.

Released under the MIT license
