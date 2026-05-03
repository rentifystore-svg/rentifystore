'use client'

import { ArrowRight } from 'lucide-react'

export default function EarnExtraBanner() {
  return (
    <section className="py-12 bg-gradient-to-r from-rentify-green to-green-600">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex flex-col sm:flex-row items-center justify-between gap-6">
          <div className="text-white">
            <h2 className="text-2xl sm:text-3xl font-bold mb-2">
              Earn from your unused items
            </h2>
            <p className="text-green-50 text-lg">
              Turn your idle items into income with Mumbai's trusted rental platform
            </p>
          </div>
          
          <button className="bg-white text-rentify-green px-6 py-3 rounded-full font-semibold hover:bg-gray-50 transition-colors flex items-center gap-2 whitespace-nowrap">
            Start Renting
            <ArrowRight className="h-5 w-5" />
          </button>
        </div>
      </div>
    </section>
  )
}
