This is a list of basic steps to compile ogre-procedural from source.

## Prerequisites ##
  * Install Cmake
  * Install Ogre, either from source or precompiled SDK (1.7 or 1.8)
  * If you are using MS Windows, make sure that there's an evironnement variable OGRE\_HOME set to your ogre SDK directory

## Get ogre-procedural source ##
> ### From pre-packaged source ###
A zip file containing source for v0-2 of ogre-procedural is available on the download page.

> ### From mercurial repository ###
Getting the sources from mercurial repository enables you to stay up to date with the latest changes.
  * Install mercurial or TortoiseHg on your system
  * Clone the repository using the following command :
`hg clone https://code.google.com/p/ogre-procedural/ ogre-procedural`
  * If you want to get the stable branch, use `hg update v0-2` (and `hg update default` for unstable branch). If you don't do this you'll get the unstable brnach.
  * Later on, if you want to upgrade your copy of ogre-procedural, just use `hg pull -u` from the source folder.

## Compiling ##
  * Optional : if you haven't defined a system env var for OGRE\_HOME, you can set it up in Cmake
  * Generate project files using Cmake (hit configure 2 times, then generate)
  * Generating the target 'INSTALL' will produce a binary SDK in the 'sdk' subfolder.