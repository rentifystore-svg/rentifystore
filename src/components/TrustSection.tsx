'use client'

import { Shield, Lock, Users } from 'lucide-react'

const trustPillars = [
  {
    icon: Users,
    title: 'ID & Phone Verified',
    description: '100% Aadhaar-KYC verified users',
    color: 'text-blue-600'
  },
  {
    icon: Lock,
    title: 'Secure Payments',
    description: 'Encrypted transactions and secure deposits',
    color: 'text-green-600'
  },
  {
    icon: Shield,
    title: 'Safe Rental',
    description: 'Inspection-based handover',
    color: 'text-purple-600'
  }
]

export default function TrustSection() {
  return (
    <section className="py-16 bg-gray-50">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <h2 className="text-3xl font-bold text-center text-gray-900 mb-12">
          Trust & Security
        </h2>
        
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          {trustPillars.map((pillar, index) => {
            const Icon = pillar.icon
            return (
              <div key={index} className="text-center">
                <div className="w-16 h-16 bg-white rounded-full flex items-center justify-center mx-auto mb-4 shadow-sm">
                  <Icon className={`h-8 w-8 ${pillar.color}`} />
                </div>
                <h3 className="text-xl font-semibold text-gray-900 mb-2">
                  {pillar.title}
                </h3>
                <p className="text-gray-600">
                  {pillar.description}
                </p>
              </div>
            )
          })}
        </div>
      </div>
    </section>
  )
}
