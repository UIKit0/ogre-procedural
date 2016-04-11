# The project has moved! #

# It's new home is [here](https://bitbucket.org/transporter/ogre-procedural) #







Ogre Procedural is a library for creating procedural geometry and textures for [Ogre3d](http://www.ogre3d.org) based projects.

That includes :
  * Primitives, such as box, sphere...
  * Extruded shapes along paths or around an axis (useful for roads, rails...)
  * Splines
  * 2D Triangulation
  * Textures (in default branch)

## Sample Code: ##
```
#include "Procedural.h"
...
//Create a sphere
Procedural::SphereGenerator().setRadius(5.f).setUTile(.5f).realizeMesh("mySphere");
mSceneMgr->createEntity("mySphere");
```

## Here are the SDKs : ##

_Note : the following SDKs are compiled against Ogre 1.8.0.
If you're using a different version of Ogre, or if your compiler is not listed here, please [build OgreProcedural from source](http://code.google.com/p/ogre-procedural/wiki/HowtoBuild)_

[Visual Studio 2008](http://ogre-procedural.googlecode.com/files/OgreProceduralSDK_vs9_v0.2.7z), [2010](http://ogre-procedural.googlecode.com/files/OgreProceduralSDK_vs10_v0.2.7z), [2012](http://ogre-procedural.googlecode.com/files/OgreProceduralSDK_vs11_v0.2.7z)

[CodeBlocks + MingW](http://ogre-procedural.googlecode.com/files/OgreProceduralSDK_MingW_v0.2.7z)

[Source bundle (CMake based)](http://ogre-procedural.googlecode.com/files/OgreProcedural_0.2_Source.7z)

## How to use it? ##
The [API reference](http://docs.ogreprocedural.org) is a good place to start.

Also, don't hesitate to ask on the [forum](http://www.ogre3d.org/addonforums/viewforum.php?f=33) for help!

![http://ogre-procedural.googlecode.com/files/Extrusion.jpg](http://ogre-procedural.googlecode.com/files/Extrusion.jpg)
![http://ogre-procedural.googlecode.com/files/Primitives.jpg](http://ogre-procedural.googlecode.com/files/Primitives.jpg)