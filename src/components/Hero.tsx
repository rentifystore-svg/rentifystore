'use client'

import { Search, Filter } from 'lucide-react'
import { useState } from 'react'

export default function Hero() {
  const [searchQuery, setSearchQuery] = useState('')

  return (
    <section className="relative bg-gradient-to-br from-rentify-green/10 to-green-50 py-12 sm:py-20 lg:py-24">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center">
          {/* Headline */}
          <h1 className="text-3xl sm:text-4xl lg:text-5xl font-bold text-gray-900 mb-4">
            Rent anything, anywhere in Mumbai
          </h1>
          
          {/* Tagline */}
          <p className="text-lg sm:text-xl text-gray-600 mb-8 sm:mb-12">
            Use karo, kharidna zaruri nahi
          </p>
          
          {/* Search Input */}
          <div className="max-w-2xl mx-auto">
            <div className="relative">
              <Search className="absolute left-4 top-1/2 transform -translate-y-1/2 text-gray-400 h-5 w-5" />
              <input
                type="text"
                placeholder="Search items, locations..."
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                className="w-full pl-12 pr-16 py-4 text-lg border border-gray-200 rounded-3xl focus:outline-none focus:ring-2 focus:ring-rentify-green focus:border-transparent shadow-sm"
              />
              <button className="absolute right-2 top-1/2 transform -translate-y-1/2 bg-rentify-green text-white p-3 rounded-full hover:bg-green-600 transition-colors">
                <Filter className="h-5 w-5" />
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>
  )
}
