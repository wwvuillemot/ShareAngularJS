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

`/package.json`
-------

Update [`package.json`](package.json), found in the root of the project, to
include `grunt`, `grunt-contrib-less`, and `grunt-contrib-watch`.

`/app/app.less`
-------

Depending on how you keep your `less` files, you will want to `@import` the CLAF `less` file.

   /* app claf stylesheet */
   @import './bower_components/claf/stylesheets/claf.less';

`/Gruntfile.js`
-------

Include at the root of the project a [`Gruntfile.js`](Gruntfile.js).  

From the command-line you can run `less` to do a one-time compile to `css`:

   grunt less

Alternatively, if you are in development mode then you can run

   grunt watch


`/bower.json`
-------

Update [`bower.json`](bower.json), found in the root of the project, to include
our CLAF dependency.
