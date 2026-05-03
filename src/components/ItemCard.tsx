'use client'

import { MapPin, Star } from 'lucide-react'

interface ItemCardProps {
  id: string
  title: string
  price: number
  location: string
  image: string
  rating?: number
  category?: string
}

export default function ItemCard({ title, price, location, image, rating = 4.5, category }: ItemCardProps) {
  return (
    <div className="bg-white rounded-3xl shadow-sm hover:shadow-lg transition-shadow overflow-hidden cursor-pointer">
      {/* Image Container */}
      <div className="relative aspect-square">
        <img 
          src={image} 
          alt={title}
          className="w-full h-full object-cover"
        />
        {/* Location Badge */}
        <div className="absolute top-3 left-3 bg-white/90 backdrop-blur-sm px-3 py-1 rounded-full flex items-center gap-1">
          <MapPin className="h-3 w-3 text-rentify-green" />
          <span className="text-xs font-medium text-gray-700">{location}</span>
        </div>
      </div>
      
      {/* Content */}
      <div className="p-4">
        {/* Title */}
        <h3 className="font-semibold text-gray-900 mb-2 line-clamp-1">{title}</h3>
        
        {/* Rating */}
        <div className="flex items-center gap-1 mb-2">
          <Star className="h-4 w-4 text-yellow-400 fill-current" />
          <span className="text-sm text-gray-600">{rating}</span>
        </div>
        
        {/* Price */}
        <div className="flex items-center justify-between">
          <div>
            <span className="text-2xl font-bold text-rentify-green">₹{price}</span>
            <span className="text-sm text-gray-500">/day</span>
          </div>
          {category && (
            <span className="text-xs bg-gray-100 text-gray-600 px-2 py-1 rounded-full">
              {category}
            </span>
          )}
        </div>
      </div>
    </div>
  )
}
