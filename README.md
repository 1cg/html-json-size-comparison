# Size Comparison

This repo just compares the size of various representations of 1000 contacts:

* A JSON representation
* A raw HTML table representation
* An HTML table with a link in it

The sizes of these various representations in uncompressed and compressed form
are as follows:

```
total 1144
-rw-r--r--  1 carson  staff   145K Feb  1 12:24 data+.html
-rw-r--r--  1 carson  staff    36K Feb  1 12:24 data+.html.gz
-rw-r--r--  1 carson  staff   118K Feb  1 12:21 data.html
-rw-r--r--  1 carson  staff    33K Feb  1 12:21 data.html.gz
-rw-r--r--@ 1 carson  staff   132K Feb  1 12:11 data.json
-rw-r--r--@ 1 carson  staff    33K Feb  1 12:11 data.json.gz
```

Standard download speeds according to <https://bundlephobia.com/> are:

* 875Kb/s - Emerging 4g
* 50Kb/s - Slow 3g

In the above data we can see that the difference betwen uncompressed data for
a table with a link in it and JSON is ~13kb.  On slow 3G this would be a difference of ~300ms.  The difference between the compressed representations is 3kb, and the difference would be ~60ms.

This is not to establish that HTML is as efficient as JSON, obviously the examples here are very raw and HTML often may be more complex, however this does show that in large data sets (which is when transfer size matters relative to request latency) HTML can compete with JSON in representational efficiency, particularly when compression is used.
