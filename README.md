# Size Comparison

This repo just compares the size of various representations of 1000 contacts:

* A JSON representation
* A raw HTML table representation
* An HTML table with a link in it
* An HTML table with a link in it, styled using tailwinds css (based on [this example](https://www.material-tailwind.com/docs/html/table))

The sizes of these various representations in uncompressed and compressed form
are as follows:

```
total 1144
total 3168
-rw-r--r--@ 1 carson  staff   1.5K Feb  1 17:10 README.md
-rw-r--r--  1 carson  staff   145K Feb  1 12:24 data+.html
-rw-r--r--  1 carson  staff    36K Feb  1 12:24 data+.html.gz
-rw-r--r--  1 carson  staff   118K Feb  1 12:21 data.html
-rw-r--r--  1 carson  staff    33K Feb  1 12:21 data.html.gz
-rw-r--r--@ 1 carson  staff   132K Feb  1 12:11 data.json
-rw-r--r--@ 1 carson  staff    33K Feb  1 12:11 data.json.gz
-rw-r--r--  1 carson  staff   955K Feb  1 17:09 data_tailwind.html
-rw-r--r--  1 carson  staff    45K Feb  1 17:09 data_tailwind.html.gz
```

Standard download speeds according to <https://bundlephobia.com/> are:

* 875Kb/s - Emerging 4g
* 50Kb/s - Slow 3g

In the above data we can see that the difference betwen uncompressed data for a table with a link in it and JSON is ~13kb.  

On slow 3G this would be a difference of ~300ms.  The difference between the compressed representations is 3kb, and the time difference would be ~60ms.

Over emerging 4G, the differences become ~15ms uncompresed and ~3ms compressed.

The worse HTML example is the tailwinds-based CSS, due to the repeated inline class mechanism that tailwinds uses.  In uncompressed form this would take a whopping 19 seconds to download on slow 3g.  However, compressed it is only 12kb larger than compressed JSON, for a difference of 240 milliseconds.  On emerging 4G the difference becomes ~14ms.

This is not to establish that HTML is as efficient as JSON, obviously the examples here are very raw and HTML often may be more complex, however this does show that in large data sets (which is when transfer size matters relative to request latency) HTML can at least compete with JSON in representational efficiency, particularly when compression is used.

This does show how important compression can be for performance in HTML-based responses.