# TinyPNG Batch with Powershell

This is a short Powershell Script that allows you to compress all PNG and JPG files with the engine of [TinyPNG](https://tinypng.com). 

## Setup
The Script uses the API of TinPNG, so you will have to get an API-key which you can get on the website [here](https://tinypng.com/developers). Just enter a mailaddress and you will get a mail in which you find a link to you API-key

To use the Script you have to create another file called "config.ps1". In that file add the following code:

```
$pass = "your api code"
```

Of course you could also just add that to the main script.

## Use the Script
Put the script in a folder with the PNG and JPG images that you want to compress. Rightclick the script and execute it with Powershell.
There will be a new folder called tiny in which you find your compressed images.