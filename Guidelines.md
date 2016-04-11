# Target features #
Procedural geometry for a realtime 3D app may pursue many goals.
As the subject is very large, the following rules try to prioritize features:
  * **Don't try to compete with modeling tools**
They are indeed very good at what they do, and our goal is not to reinvent Blender or 3dsmax.<br>
Instead, we should focus on the benefits of a loading time procedural lib. <br>
These are :<br>
<ul><li><b>Quickly get some placeholder meshes</b>
The initial idea of the project is that I needed such placeholders for a physics prototype I was trying to make.<br>
Without any artistical skill or even content pipeline set up, having some simple boxes at the right sizes/orientation was shockingly long to get into the app.<br>
</li><li><b>Save up artist time</b>
The lib should focus on providing auto assembling things, rather than working on the polygon level.<br>
For example, roads should be very easy to put, because everything would be there to automate the process : just decide about the spline, OgreProcedural does the rest, including placing streetlights, pavement...<br>
</li><li><b>Produce massive amount of data from tiny bytes</b>
Of course, disk space is becoming stupidly cheap these days.<br>
But don't forget about digital distribution, smartphones etc..<br>
Also, by "tiny bytes", I also mean "tiny work"