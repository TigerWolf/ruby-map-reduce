kieran@ubuntu:~/dev/ruby-map-reduce$ time cat sample-data/CrimeStatebyState.csv | ruby crime/map.rb | sort |  ruby crime/reduce.rb
Aggravated assault	30190464
Burglary	113685708
Forcible rape	3205229
Larceny-theft	270244265
Motor vehicle theft	48750231
Murder and nonnegligent Manslaughter	810514

real	0m0.308s
user	0m0.203s
sys	0m0.057s
kieran@ubuntu:~/dev/ruby-map-reduce$ time ruby crime/mapandreduce.rb 
Aggravated assault	30190464
Burglary	113685708
Forcible rape	3205229
Larceny-theft	270244265
Motor vehicle theft	48750231
Murder and nonnegligent Manslaughter	810514

real	0m0.275s
user	0m0.222s
sys	0m0.014s
