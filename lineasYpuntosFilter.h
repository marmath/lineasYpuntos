//
//  plugin - lineasYpuntosFilter.h
//  plung in que crea lineas Y puntos
//  sobre imagenes dicom 2D y 3D
//  Copyright (c) 2014 MartinGarces. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <OsiriXAPI/PluginFilter.h>
#import <OsiriXAPI/OSIROI.h>

@interface lineasYpuntosFilter : OSIROI
{
    NSWindow * ventana;
    NSView * controlador;
    
    N3VectorArray* listaDePuntos;
    NSString* nombreDelPunto;
    
    N3LineArray* listaDeLineas;
    NSString* nombreDeLinea;
}

-(N3VectorArray*) listaDePuntos;
-(void) setListaDePuntos;
-(void) addPunto:(N3Vector) nuevoPunto;
-(void) setNombreDelPunto: (NSString *) newNameROI : (ROI *)currentROI;
-(void) setNombreDelPunto;

-(N3LineArray*) listaDeLineas;
-(void) setListaDeLineas:(N3Line) nuevaLinea;


-(void) addCheckBox: (NSString *) puntoASerAgregado;

@end
