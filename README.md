# sweetwater_gibson_serial_search
A simple script to search for specific serial numbers for gibson guitars on sweetwater. 

Sweetwater.com does not have an easy way to look for a specific serial number for a gibson guitar. However, if you happen to search for a serial number it CAN be found.

This stupid script can run through looking for search hits that exist and spit out the results. Just edit the range of serial numbers to search and away it goes.

```
VALUE=<serial number of interest>

https://www.sweetwater.com/store/search.php?s=",VALUE,"&sb=score&loopstop=1
```

Can look for specific dates, interesting numbers, etc etc.
