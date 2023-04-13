#!/bin/bash
# asciidoctor, weasyprint, imagemagik


# asciidoctor episode-titles.adoc -o episode-titles.html ;
# weasyprint episode-titles.html episode-titles.pdf ;
asciidoctor credits_s03e03.adoc -o credits_s03e03.html ;
weasyprint credits_s03e03.html credits_s03e03.pdf ;

asciidoctor credits_s03e04.adoc -o credits_s03e04.html ;
weasyprint credits_s03e04.html credits_s03e04.pdf ;

convert -density 400 credits_s03e04.pdf OUT/s03e04/s03e04.png ;


# cleanup
rm *html ;
rm *pdf ;