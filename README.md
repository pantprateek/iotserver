# iotserver
iot media server and player

##Summary## This is a project for voice recognition based OTT video streamer and player. 
This project uses HTML5 player at the client and can playback videos stored  /video dir in EC2 server.
Video is streamed using nodejs script httpserver.js . Playlist is stored in /video directory in json format. 
the videos stored in /video in EC2 and you can playback in  (HTML5 player) at the client.Google speech recognition module 
webkitSpeechRecognition is used to process the speech to text and then text is sent to the server .
Server in turn will check for meaniningful commands in the text mentioned in cmdstr array in the server and HTML5 player 
invokes the player functionality based on the command.
This server also has live video support .On raspberry pi board connect a webcamera and run gst.sh script.This will create a reverse ssh tunnel
to port 9001 on EC2 and streams over TCP using gstreamer pipeline . Server listens to this port for live streaming.


##Prerequisites## A recent version of the Chrome browser supporting "webkitSpeechRecognition" . npm should be installed .

##Installation and Running##

Download the contents of this repo.
Run npm install from source root of genie
Run node httpserver.js
##Usage## Add videos in mp4,webm,ogg formats to /video folder . Connect to ec2-xxx-xxx-xxx-xxx.compute-1.amazonaws.com:8080 .You will see the webpage withthe playlist. Make sure your microphone is connected and is working well.

You can control your video playback by saying appropriate commands in your microphone. 
(1)"zoom" to zoom in and out (2)"play" to start the playback (3)"stop" to stop or pause the playback 
(4)"channel xxx" to change channel (5)"mute" to mute the volume (6)"back" to move backwards (7)"forward" to move forward
(6)"live" to switch to your remote camera stream
