# TinyPNG Batch with Powershell

A Powershell Script, allowing you to compress all PNG and JPG files in a directory with the engine of [TinyPNG](https://tinypng.com). 

## Setup
The Script uses the API of TinPNG. You need an API-key which you can get on the website [here](https://tinypng.com/developers). 
Enter a mailaddress to get a mail where you find a link to your API-key

To use the Script you have to create a file called "config.ps1". In that file add the following code:

```
$pass = "your api code"
```

Of course you could also just add that to the main script.

## Use the Script
Put the script in a directory with the PNG and JPG images that you want to compress. Rightclick the script and execute it with Powershell.
There will be a new directory called tiny where you find your compressed images.