'use client'

import { Search, Plus } from 'lucide-react'
import { useState } from 'react'

export default function Navbar() {
  const [searchQuery, setSearchQuery] = useState('')

  return (
    <nav className="bg-white shadow-sm sticky top-0 z-50">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex justify-between items-center h-16">
          {/* Logo */}
          <div className="flex-shrink-0">
            <h1 className="text-2xl font-bold text-rentify-green">Rentify</h1>
          </div>

          {/* Search Bar - Hidden on mobile, visible on desktop */}
          <div className="hidden md:flex flex-1 max-w-md mx-8">
            <div className="relative w-full">
              <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400 h-5 w-5" />
              <input
                type="text"
                placeholder="Search items, locations..."
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                className="w-full pl-10 pr-4 py-2 border border-gray-200 rounded-full focus:outline-none focus:ring-2 focus:ring-rentify-green focus:border-transparent"
              />
            </div>
          </div>

          {/* List an Item Button */}
          <div className="flex-shrink-0">
            <button className="bg-rentify-green text-white px-4 py-2 rounded-full hover:bg-green-600 transition-colors flex items-center gap-2">
              <Plus className="h-4 w-4" />
              <span className="hidden sm:inline">List an Item</span>
              <span className="sm:hidden">List</span>
            </button>
          </div>
        </div>
      </div>
    </nav>
  )
}
