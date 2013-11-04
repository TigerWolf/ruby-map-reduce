```
kieran@ubuntu:~/dev/ruby-map-reduce$ /usr/bin/time -v ruby crime/mapandreduce.rb 
Aggravated assault	30190464
Burglary	113685708
Forcible rape	3205229
Larceny-theft	270244265
Motor vehicle theft	48750231
Murder and nonnegligent Manslaughter	810514
	Command being timed: "ruby crime/mapandreduce.rb"
	User time (seconds): 0.20
	System time (seconds): 0.02
	Percent of CPU this job got: 89%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.25
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 12920
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 0
	Minor (reclaiming a frame) page faults: 3335
	Voluntary context switches: 2
	Involuntary context switches: 77
	Swaps: 0
	File system inputs: 0
	File system outputs: 0
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0
kieran@ubuntu:~/dev/ruby-map-reduce$ /usr/bin/time -v cat sample-data/CrimeStatebyState.csv | ruby crime/map.rb | sort |  ruby crime/reduce.rb
	Command being timed: "cat sample-data/CrimeStatebyState.csv"
	User time (seconds): 0.00
	System time (seconds): 0.00
	Percent of CPU this job got: 2%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.08
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 700
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 0
	Minor (reclaiming a frame) page faults: 225
	Voluntary context switches: 97
	Involuntary context switches: 3
	Swaps: 0
	File system inputs: 0
	File system outputs: 0
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0
Aggravated assault	30190464
Burglary	113685708
Forcible rape	3205229
Larceny-theft	270244265
Motor vehicle theft	48750231
Murder and nonnegligent Manslaughter	810514
```
