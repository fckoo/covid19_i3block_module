COVID19 i3blocks Module
========================
* Simple bash module that I wrote to get the COVID19 statistics for New York on my i3blocks statusbar.

## Dependencies
* curl
* jq

## Usage
1. Copy the bash script to desired location e.g __/usr/lib/i3blocks/__
```
git clone https://github.com/fckoo/covid19-i3blocks
cd covid19-i3blocks
cp ./covid19.sh /usr/lib/i3blocks/covid19
```

2. Modify your i3blocks config to add the following
```
[covid19]
command=/usr/lib/i3blocks/covid19
interval=3600
```

3. Refresh i3
