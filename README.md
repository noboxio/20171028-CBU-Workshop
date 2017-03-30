# 20170325-CBU-Lab

# PLEASE NOTE THAT THIS LAB INFORMATION IS NOT 100% COMPLETE, WE ARE WORKING ON CREATING A VIDEO TO GO WITH THIS LAB

This repository includes the files and some basic instructions used for the CBU BUC E-day lab.

The PDF: IBM InterConnect 2017 Session 2765 Handout.pdf is the lab handout from IBM InterConnect 2017 that we used to create the lab.  Please note that this file is not our lab!

To Start:
1. clone this repository to your local machine
2. Login to your bluemix account
3. Create an App, make sure that you note the app name.  The app you want to make is the Node-RED boilerplate.
4. There will be instructions there for installing cloudfoundary command line (cf) you need to install this to upload our files.
5. Once you have created the App and installed cf it is time to upload our files.
6. the files included in this repository, navigate to the project root of this repository.
7. Connect cf to bluemix using the example that was shown on the same page that gave you installation instructions.
8. `cf push project name`
9. You will then need to create the following services:
  -Conversation
  -Text to Speech
  -Speech to Text
  -Tone Analysis
10. Make sure that you connect them to the app you just created.  If you don't it will ask for information for each of the services in Node-RED.
11. you will need to restage your app or restart it, you can restage via cf or restart via gui
12. Upload the conversation.json file to the Conversation engine/service.  Click on the service and then click launch tool.
13. You will see an upload icon or something resembling upload and navigate to the conversation.json file and import it.
14. Then you are ready to go launch your Node-RED editor and connect the different parts.  An image of the completed flow will be attached here eventually.
