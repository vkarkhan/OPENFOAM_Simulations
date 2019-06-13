/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     | Version:  v1812                                 |
|   \\  /    A nd           | Web:      www.OpenFOAM.com                      |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       volScalarField;
    object      p;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [1 -1 -2 0 0 0 0];

internalField   uniform 10;

boundaryField
{
    inlet
    {
        type           fixedValue;
	value	       uniform 15; 
    }

    outlet
    {
        type            fixedValue;
        value           uniform 10;
    }

    topWall
    {
        type            zeroGradient; //fixedValue; //zeroGradient;
    }

    obstacle
    {
        type            zeroGradient;
    }

    bottom
    {
        type            symmetryPlane;
    }

    defaultFaces
    {
        type            empty;
    }
}

// ************************************************************************* //
