#TagLib.framework - ready for Obj-C

After spending a whole evening trying to make TagLib work in Obj-C I got it eventually, and I wanted to share a working framework project.

It includes TagLib 1.7.2 and was tested on OS X 10.7. An example app is provided.

##Installation

In order to get TagLib working in your XCode project, you have to do the following:

* clone the framework in a comfortable location:

	$ git clone https://github.com/moonwave99/TagLib.framework

* drag ```TagLib.xcodeproj``` into your Project Navigator;

* follow [Apple](https://developer.apple.com/library/mac/#documentation/MacOSX/Conceptual/BPFrameworks/Tasks/CreatingFrameworks.html#//apple_ref/doc/uid/20002258-106880-BAJJBIEF) instructions about importing private frameworks;

* if you missed anything, refer to the **TaglibExample** target configuration.

Et voilà, check the example about tag reading, then follow [TagLib API](http://taglib.github.com/api/) for more advanced features.

**NOTICE**: remember to rename from **.m** to **.mm** all the files where you refer to TagLib methods in order to force C++ compilation over them.

Hope it helps!