/*
Copyright (c) 2013, Hyperfiction
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#ifndef IPHONE
#define IMPLEMENT_API
#endif

#include <hx/CFFI.h>
#include <stdio.h>
#include <hxcpp.h>
#include "HypRate.h"

extern "C"{

	int HypRate_register_prims(){
		printf("HypFacebook : register_prims()\n");
		return 0;
	}
}

// Common ------------------------------------------------------------------------------------------------------

// Android -----------------------------------------------------------------------------------------------------

// Callbacks ------------------------------------------------------------------------------------------------------

// iPhone ---------------------------------------------------------------------------------------------------------

#ifdef IPHONE
    value HypRate_setAppId( value s ) {
        Hyperfiction::setAppId( val_string( s ) );
		return alloc_null( );
	}
	DEFINE_PRIM( HypRate_setAppId , 1 );

	value HypRate_setDialog_title( value s ) {
        Hyperfiction::setDialog_title( val_string( s ) );
		return alloc_null( );
	}
	DEFINE_PRIM( HypRate_setDialog_title , 1 );

	value HypRate_setDialog_msg( value s ) {
        Hyperfiction::setDialog_msg( val_string( s ) );
		return alloc_null( );
	}
	DEFINE_PRIM( HypRate_setDialog_msg , 1 );

	value HypRate_setPositive_text( value s ) {
        Hyperfiction::setPositive_text( val_string( s ) );
		return alloc_null( );
	}
	DEFINE_PRIM( HypRate_setPositive_text , 1 );

	value HypRate_setNeutral_text( value s ) {
        Hyperfiction::setNeutral_text( val_string( s ) );
		return alloc_null( );
	}
	DEFINE_PRIM( HypRate_setNeutral_text , 1 );

	value HypRate_setNegative_text( value s ) {
        Hyperfiction::setCancel_text( val_string( s ) );
		return alloc_null( );
	}
	DEFINE_PRIM( HypRate_setNegative_text , 1 );

	value HypRate_start( value minL , value minD , value untilL , value untilD ){
        Hyperfiction::start( val_int( minL ) , val_int( minD ) , val_int( untilL ) , val_int( untilD ));
		return alloc_null( );
	}
	DEFINE_PRIM( HypRate_start , 4 );

	value HypRate_show( ){
        Hyperfiction::show( );
		return alloc_null( );
	}
	DEFINE_PRIM( HypRate_show , 0 );

#endif

