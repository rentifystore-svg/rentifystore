'use client'

import { MapPin } from 'lucide-react'

export default function MapSnippet() {
  return (
    <section className="py-12 bg-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <h2 className="text-2xl sm:text-3xl font-bold text-gray-900 mb-8">
          Items near you
        </h2>
        
        <div className="relative bg-gray-100 rounded-3xl overflow-hidden" style={{ height: '400px' }}>
          {/* Map Background - Grid Pattern */}
          <div className="absolute inset-0 bg-gradient-to-br from-gray-100 to-gray-200">
            {/* Grid Lines */}
            <div className="absolute inset-0" style={{
              backgroundImage: 'linear-gradient(rgba(0,0,0,0.05) 1px, transparent 1px), linear-gradient(90deg, rgba(0,0,0,0.05) 1px, transparent 1px)',
              backgroundSize: '50px 50px'
            }}></div>
          </div>
          
          {/* 500m Blue Circle Overlay */}
          <div className="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2">
            <div className="w-64 h-64 border-4 border-rentify-green rounded-full opacity-30 bg-rentify-green/10"></div>
          </div>
          
          {/* Center Point */}
          <div className="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2">
            <div className="w-4 h-4 bg-rentify-green rounded-full shadow-lg"></div>
          </div>
          
          {/* Floating Card - Items Near You */}
          <div className="absolute top-4 left-4 bg-white rounded-2xl shadow-lg p-4 max-w-xs">
            <div className="flex items-center gap-3">
              <div className="w-10 h-10 bg-rentify-green rounded-full flex items-center justify-center">
                <MapPin className="h-5 w-5 text-white" />
              </div>
              <div>
                <p className="font-semibold text-gray-900">6 items near you</p>
                <p className="text-sm text-gray-600">Within 500m radius</p>
              </div>
            </div>
          </div>
          
          {/* Sample Location Markers */}
          <div className="absolute top-1/3 left-1/4 w-3 h-3 bg-gray-400 rounded-full"></div>
          <div className="absolute top-2/3 right-1/3 w-3 h-3 bg-gray-400 rounded-full"></div>
          <div className="absolute bottom-1/4 left-1/3 w-3 h-3 bg-gray-400 rounded-full"></div>
        </div>
      </div>
    </section>
  )
}
