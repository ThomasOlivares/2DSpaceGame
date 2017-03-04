#ifndef TEXTURE_HOLDER_H
#define TEXTURE_HOLDER_H

#include "resourceIdentifiers.hpp"

#include <SFML/Graphics.hpp>
#include <map>
#include <iostream>
#include <memory>
#include <utility>
#include <assert.h>

template <typename Resource, typename Identifier>
class ResourceHolder{
	public:
		ResourceHolder();
		void load(Identifier id, const std::string& filename);
		template <typename Parameter>
		void load(Identifier id, const std::string& filename, 
			const Parameter& secondParam);
		Resource& get(Identifier id) const;

	private:
		std::map<Identifier, std::unique_ptr<Resource>> mResourceMap;
};

#include "resourceHolder.tpp"

#endif //TEXTURE_HOLDER_H
