# Scripting use cases #
**Basic Sample**
```
BoxGenerator myBox
{
    sizeX 10
    position 1 3 2
}
```
**Prototyping**
```
// myBox2 is a BoxGenerator with the same parameters as myBox, except for sizeY

myBox myBox2			
{
    sizeY 3
}
```

**Chaining**
```
CatmullRomSpline2 myShape
{
    point 0 0
    point 1 0
    point 1 1
    point 0 1
    closed true
}

Path myPath
{
    point 0 0 0
    point 0 10 0
}

Extruder myExtruder
{
    shapeToExtrude myShape
    extrusionPath myPath
}
```

**Descending parameters**

Use case : a "bridge.procedural" script can draw a bridge between 2 points. Some parameters are not in the top level mesh that is created, but in one of the many dependencies. How to adress them?

```
MeshAssembler bridge
{
    mesh bridgeCable1
    mesh bridgeCable2
    param xposoffset 0.2
}

Extruder bridgeCable1
{
    extrusionPath p1
}

CamullRomSpline3 p1
{
    point -10+xposoffset 0 0
    point 10+xposoffset 0 0
}

```

**Anonymous operators**
```
myExtruder myExtruder2
{
    extrusionPath CatmullRomSpline3 { point 0 0 0 ; point 0 10 0;point 0 10 10}
}
```

# Defining operators in code #
Built-in OgreProcedural operators and custom user-made operators can be mixed together.

All operators inherit a common _Operator_ abstract class.
They have 3 virtual methods to implement :
  * getOutputType
  * getInputParametersType
  * buildOutput

Binding between input parameters and code is done through getInputParametersType.
Each parameter can be set and retrieved by OgreProcedural either by pointer or custom getter/setter.

Getters/setters are only recommended when they do something smarter than just setting the parameter (for example see `Lathe::setAngleBegin()` ).
In other cases, removing them reduces clutter.