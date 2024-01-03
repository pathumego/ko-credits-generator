#!/bin/bash
# asciidoctor, weasyprint, imagemagik


asciidoctor episode-titles.adoc -o episode-titles.html ;
weasyprint episode-titles.html episode-titles.pdf ;
# asciidoctor credits_s03e03.adoc -o credits_s03e03.html ;
# weasyprint credits_s03e03.html credits_s03e03.pdf ;

asciidoctor credits_s03e06.adoc -o credits_s03e06.html ;
weasyprint credits_s03e06.html credits_s03e06.pdf ;

convert -density 400 credits_s03e06.pdf OUT/s03e06/s03e06.png ;


# cleanup
rm *html ;
rm *pdf ;