//
//  lineasYpuntosFilter.m
//  lineasYpuntos
//
//  Copyright (c) 2014 MartinGarces. All rights reserved.
//

#import "lineasYpuntosFilter.h"


@implementation lineasYpuntosFilter
- (void) initPlugin
{
}
int contadorDePuntos=0;

- (id)init
{
    self = [super init];
    if (self) {
        [self setListaDePuntos];
    }
    return self;
}


-(N3VectorArray*) listaDePuntos
{
    return listaDePuntos;
}


-(N3LineArray*) listaDeLineas
{
    return listaDeLineas;
}

-(void)setListaDePuntos
{
    id currentROIs = [super osiriXROIs];
    if (currentROIs!=Nil)
    {
        for (int i=0;i<sizeof(currentROIs);i++)
        {
            [self addPunto:[currentROIs centerOfMass]];
            [self addCheckBox: [currentROIs name] ];
        }
        
        return;
    }
}

-(void) addPunto :(N3Vector) nuevoPunto
{
    //actualizaci—n de la lista de puntos agregando un nuevo punto
    listaDePuntos = [[self listaDePuntos], @[nuevoPunto]];
    
    //lista de lineas combinaci—n con todos los puntos anteriores
}

-(void) setListaDeLineas:(N3Line)nuevoLinea
{
    
}

-(void) addCheckBox: (NSString *) puntoASerAgregado
{
    id temporal = [super osiriXROIs];
    [temporal defaultName];
    return;
}

-(void) setNombreDelPunto: (NSString *) newNameROI :(ROI *) currentROI
{
    [currentROI setDefaultName: newNameROI];
}

// nombre por defecto de puntos que se puede cambiar utilizando las entradas de el mŽtodo anterior
-(void) setNombreDelPunto
{
    id temporal = [super osiriXROIs];
    NSString* nombrePorDefecto = [NSString stringWithFormat: @"P %i",contadorDePuntos];
    contadorDePuntos++;
    [temporal setDefaultName: nombrePorDefecto];
}

//look in to get primative ROI to get name out of it
-(NSString *) name
{
    id temporal = [super osiriXROIs];
    return [temporal defaultName];
}
/*

// mŽtodo para hacer las lineas entre todos los puntos posibles
-(void) hacerRelacionesEntrePuntos
{
    for (int i=0;i<sizeof(listaDePuntos);i++)
    {
        for (int j=1;j<sizeof(listaDePuntos);j++)
        {
            [listaDeLineas: listaDePuntos[i],listaDePuntos [j]];
            IBAction ();
        }
    }
}
*/
@end

