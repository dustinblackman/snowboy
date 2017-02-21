// swig/Go/snowboy-detect-swig.i

%module snowboydetect

%{
#include "snowboy-detect.h"
%}

// Suppress SWIG warnings.
#pragma SWIG nowarn=SWIGWARN_PARSE_NESTED_CLASS
%include "cdata.i"
%include "exception.i"
%include "std_common.i"
%include "std_deque.i"
%include "std_except.i"
%include "std_list.i"
%include "std_map.i"
%include "std_pair.i"
%include "std_vector.i"
%include "stl.i"
%include "std_string.i"
%include <typemaps.i>


%include "snowboy-detect.h"
