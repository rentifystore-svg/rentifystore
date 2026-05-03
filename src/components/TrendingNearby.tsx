'use client'

import ItemCard from './ItemCard'

const trendingItems = [
  {
    id: '1',
    title: 'Sony A7 IV Camera',
    price: 899,
    location: 'Bandra',
    image: '/api/placeholder/300/300',
    rating: 4.8,
    category: 'Camera'
  },
  {
    id: '2',
    title: 'Drill Machine Set',
    price: 299,
    location: 'Andheri',
    image: '/api/placeholder/300/300',
    rating: 4.6,
    category: 'Tools'
  },
  {
    id: '3',
    title: 'Camping Tent 4-Person',
    price: 499,
    location: 'Juhu',
    image: '/api/placeholder/300/300',
    rating: 4.7,
    category: 'Camping'
  },
  {
    id: '4',
    title: 'MacBook Pro M2',
    price: 1299,
    location: 'Worli',
    image: '/api/placeholder/300/300',
    rating: 4.9,
    category: 'Electronics'
  },
  {
    id: '5',
    title: 'Trekking Backpack',
    price: 199,
    location: 'Powai',
    image: '/api/placeholder/300/300',
    rating: 4.5,
    category: 'Trekking'
  },
  {
    id: '6',
    title: 'PlayStation 5',
    price: 799,
    location: 'Bandra',
    image: '/api/placeholder/300/300',
    rating: 4.8,
    category: 'Gaming'
  }
]

export default function TrendingNearby() {
  return (
    <section className="py-12 bg-gray-50">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <h2 className="text-2xl sm:text-3xl font-bold text-gray-900 mb-8">
          Trending Nearby
        </h2>
        
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          {trendingItems.map((item) => (
            <ItemCard
              id={item.id}
              key={item.id}
              title={item.title}
              price={item.price}
              location={item.location}
              image={item.image}
              rating={item.rating}
              category={item.category}
            />
          ))}
        </div>
      </div>
    </section>
  )
}
