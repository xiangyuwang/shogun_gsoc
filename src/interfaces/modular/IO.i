/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Written (W) 2009 Soeren Sonnenburg
 * Copyright (C) 2009 Fraunhofer Institute FIRST and Max-Planck-Society
 */

/* Remove C Prefix */
%rename(IOBuffer) CIOBuffer;

%rename(File) CFile;
%rename(StreamingFile) CStreamingFile;
%rename(AsciiFile) CAsciiFile;
%rename(StreamingAsciiFile) CStreamingAsciiFile;
%rename(StreamingVwFile) CStreamingVwFile;
%rename(StreamingVwCacheFile) CStreamingVwCacheFile;
%rename(StreamingFileFromFeatures) CStreamingFileFromFeatures;
%rename(BinaryFile) CBinaryFile;
%rename(HDF5File) CHDF5File;
%rename(SerializableFile) CSerializableFile;
%rename(SerializableAsciiFile) CSerializableAsciiFile;
%rename(SerializableHdf5File) CSerializableHdf5File;
%rename(SerializableJsonFile) CSerializableJsonFile;
%rename(SerializableXmlFile) CSerializableXmlFile;
%rename(SimpleFile) CSimpleFile;
%rename(MemoryMappedFile) CMemoryMappedFile;
%rename(VwParser) CVwParser;

%include <shogun/io/File.h>
%include <shogun/io/StreamingFile.h>
%include <shogun/io/StreamingFileFromFeatures.h>

/* Template Class StreamingFileFromSparseFeatures */
%include <shogun/io/StreamingFileFromSparseFeatures.h>
namespace shogun
{
#ifdef USE_BOOL
    %template(StreamingFileFromSparseBoolFeatures) CStreamingFileFromSparseFeatures<bool>;
#endif
#ifdef USE_CHAR
    %template(StreamingFileFromSparseCharFeatures) CStreamingFileFromSparseFeatures<char>;
#endif
#ifdef USE_UINT8
    %template(StreamingFileFromSparseByteFeatures) CStreamingFileFromSparseFeatures<uint8_t>;
#endif
#ifdef USE_INT16
    %template(StreamingFileFromSparseShortFeatures) CStreamingFileFromSparseFeatures<int16_t>;
#endif
#ifdef USE_UINT16
    %template(StreamingFileFromSparseWordFeatures) CStreamingFileFromSparseFeatures<uint16_t>;
#endif
#ifdef USE_INT32
    %template(StreamingFileFromSparseIntFeatures) CStreamingFileFromSparseFeatures<int32_t>;
#endif
#ifdef USE_UINT32
    %template(StreamingFileFromSparseUIntFeatures) CStreamingFileFromSparseFeatures<uint32_t>;
#endif
#ifdef USE_INT64
    %template(StreamingFileFromSparseLongFeatures) CStreamingFileFromSparseFeatures<int64_t>;
#endif
#ifdef USE_UINT64
    %template(StreamingFileFromSparseUlongFeatures) CStreamingFileFromSparseFeatures<uint64_t>;
#endif
#ifdef USE_FLOAT32
    %template(StreamingFileFromSparseShortRealFeatures) CStreamingFileFromSparseFeatures<float32_t>;
#endif
#ifdef USE_FLOAT64
    %template(StreamingFileFromSparseRealFeatures) CStreamingFileFromSparseFeatures<float64_t>;
#endif
#ifdef USE_FLOATMAX
    %template(StreamingFileFromSparseLongRealFeatures) CStreamingFileFromSparseFeatures<floatmax_t>;
#endif
}

/* Template Class StreamingFileFromSimpleFeatures */
%include <shogun/io/StreamingFileFromSimpleFeatures.h>
namespace shogun
{
#ifdef USE_BOOL
    %template(StreamingFileFromBoolFeatures) CStreamingFileFromSimpleFeatures<bool>;
#endif
#ifdef USE_CHAR
    %template(StreamingFileFromCharFeatures) CStreamingFileFromSimpleFeatures<char>;
#endif
#ifdef USE_UINT8
    %template(StreamingFileFromByteFeatures) CStreamingFileFromSimpleFeatures<uint8_t>;
#endif
#ifdef USE_INT16
    %template(StreamingFileFromShortFeatures) CStreamingFileFromSimpleFeatures<int16_t>;
#endif
#ifdef USE_UINT16
    %template(StreamingFileFromWordFeatures) CStreamingFileFromSimpleFeatures<uint16_t>;
#endif
#ifdef USE_INT32
    %template(StreamingFileFromIntFeatures) CStreamingFileFromSimpleFeatures<int32_t>;
#endif
#ifdef USE_UINT32
    %template(StreamingFileFromUIntFeatures) CStreamingFileFromSimpleFeatures<uint32_t>;
#endif
#ifdef USE_INT64
    %template(StreamingFileFromLongFeatures) CStreamingFileFromSimpleFeatures<int64_t>;
#endif
#ifdef USE_UINT64
    %template(StreamingFileFromUlongFeatures) CStreamingFileFromSimpleFeatures<uint64_t>;
#endif
#ifdef USE_FLOAT32
    %template(StreamingFileFromShortRealFeatures) CStreamingFileFromSimpleFeatures<float32_t>;
#endif
#ifdef USE_FLOAT64
    %template(StreamingFileFromRealFeatures) CStreamingFileFromSimpleFeatures<float64_t>;
#endif
#ifdef USE_FLOATMAX
    %template(StreamingFileFromLongRealFeatures) CStreamingFileFromSimpleFeatures<floatmax_t>;
#endif
}

%include <shogun/io/AsciiFile.h>
%include <shogun/io/StreamingAsciiFile.h>
%include <shogun/classifier/vw/VwParser.h>
%include <shogun/io/StreamingVwFile.h>
%include <shogun/io/StreamingVwCacheFile.h>
%include <shogun/io/BinaryFile.h>
%include <shogun/io/HDF5File.h>
%include <shogun/io/SerializableFile.h>
%include <shogun/io/SerializableAsciiFile.h>
%include <shogun/io/SerializableHdf5File.h>
%include <shogun/io/SerializableJsonFile.h>
%include <shogun/io/SerializableXmlFile.h>

%include <shogun/io/SimpleFile.h>
%include <shogun/io/MemoryMappedFile.h>
