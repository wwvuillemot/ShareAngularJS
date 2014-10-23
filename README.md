Introduction
======

This project is composed of three (3) `git` repositories.  It is meant as a
proof of concept on how to share components such as CSS, JS, and even HTML
templates between different app frameworks using [Bower](http://bower.io).

  * **[ShareCLAF](http://github.com/wwvuillemot/ShareCLAF)** Contains the shared CLAF (common look and feel)
  * **[ShareRails](http://github.com/wwvuillemot/ShareRails)** Describes how to setup Bower with Rails
  * **[ShareAngularJS](http://github.com/wwvuillemot/ShareAngularJS)** Describes how to setup Bower with AngularJS

Configuration
=======

`/bower.json`
-------

Update `bower.json` found in the root of the project to include our CLAF dependency.

     {
       "name": "share-angular",
       "description": "Demonstration of sharing CLAF between frameworks",
       "version": "0.0.1",
       "homepage": "https://github.com/wwvuillemot/ShareAngularJS",
       "license": "MIT",
       "private": true,
       "dependencies": {
         "angular": "1.2.x",
         "angular-route": "1.2.x",
         "angular-loader": "1.2.x",
         "angular-mocks": "~1.2.x",
         "html5-boilerplate": "~4.3.0",
         "claf": "https://github.com/wwvuillemot/ShareCLAF.git"
       }
     }
