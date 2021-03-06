/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Written (W) 2012 Sergey Lisitsyn
 * Copyright (C) 2012 Sergey Lisitsyn
 */

#ifndef __GUICONVERTER_H__
#define __GUICONVERTER_H__

#include <shogun/lib/config.h>
#include <shogun/base/SGObject.h>
#include <shogun/converter/Converter.h>
#include <shogun/features/SimpleFeatures.h>

namespace shogun
{
class CSGInterface;

/** @brief UI converter */
class CGUIConverter : public CSGObject
{
	public:
		/** constructor */
		CGUIConverter()
		{

		};

		/** constructor
		 * @param interface
		 */
		CGUIConverter(CSGInterface* interface);

		/** create LLE */
		bool create_locallylinearembedding(int32_t k);
		/** create NPE */
		bool create_neighborhoodpreservingembedding(int32_t k);
		/** create LTSA */
		bool create_localtangentspacealignment(int32_t k);
		/** create LLTSA */
		bool create_linearlocaltangentspacealignment(int32_t k);
		/** create HLLE */
		bool create_hessianlocallylinearembedding(int32_t k);
		/** create Laplacian Eigenmaps */
		bool create_laplacianeigenmaps(int32_t k, float64_t width);
		/** create LPP */
		bool create_localitypreservingprojections(int32_t k, float64_t width);
		/** create Diffusion maps */
		bool create_diffusionmaps(int32_t t, float64_t width);
		/** create Isomap */
		bool create_isomap(int32_t k);
		/** create Multidimensional scaling */
		bool create_multidimensionalscaling();

		/** embed */
		CSimpleFeatures<float64_t>* embed(int32_t target_dim);

		/** destructor */
		~CGUIConverter();

		/** @return object name */
		virtual const char* get_name() const { return "GUIPreprocessor"; }

	protected:

		/** converter */
		CConverter* m_converter;

		/** ui */
		CSGInterface* m_ui;
};
}
#endif
