## Synopsis

Short script to consume audio from a sound card, and stream it with a logo to youtube livestreaming using ffmpeg

## Motivation

I wanted to be able to stream our local amateur raido repeaters to youtube for the internet to listen to.  Figuring out the
details of doing an absoultely minimalist job of this took me far too many hours.  Hopefully it will take the next person
fewer hours.

## Installation

Clone into a directory.
cp local.config.example local.config
vi local.config # and fill in the blanks.
./streamer.sh


## Contributors

If it breaks you get to keep both pieces.  Much of this configuration is terrible.  I'm working to make it less terrible.
Pull requests welcome.

## License

MIT License

Copyright (c) 2015 Jeff Goeke-Smith 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

