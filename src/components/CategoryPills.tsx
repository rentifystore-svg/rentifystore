'use client'

import { 
  Wrench, 
  Smartphone, 
  Mountain, 
  Tent, 
  Camera, 
  Gamepad2,
  Home,
  Car,
  BookOpen
} from 'lucide-react'
import { useState } from 'react'

const categories = [
  { id: 'all', name: 'All', icon: Home },
  { id: 'tools', name: 'Tools', icon: Wrench },
  { id: 'electronics', name: 'Electronics', icon: Smartphone },
  { id: 'trekking', name: 'Trekking', icon: Mountain },
  { id: 'camping', name: 'Camping', icon: Tent },
  { id: 'camera', name: 'Camera', icon: Camera },
  { id: 'gaming', name: 'Gaming', icon: Gamepad2 },
  { id: 'vehicles', name: 'Vehicles', icon: Car },
  { id: 'books', name: 'Books', icon: BookOpen },
]

export default function CategoryPills() {
  const [selectedCategory, setSelectedCategory] = useState('all')

  return (
    <section className="py-6 bg-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex gap-3 overflow-x-auto hide-scrollbar pb-2">
          {categories.map((category) => {
            const Icon = category.icon
            return (
              <button
                key={category.id}
                onClick={() => setSelectedCategory(category.id)}
                className={`flex items-center gap-2 px-4 py-2 rounded-full whitespace-nowrap transition-all ${
                  selectedCategory === category.id
                    ? 'bg-rentify-green text-white shadow-md'
                    : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
                }`}
              >
                <Icon className="h-4 w-4" />
                <span className="text-sm font-medium">{category.name}</span>
              </button>
            )
          })}
        </div>
      </div>
    </section>
  )
}
