'use client'

import { Smartphone } from 'lucide-react'
import { useState } from 'react'

export default function WaitlistFooter() {
  const [phoneNumber, setPhoneNumber] = useState('')
  const [isSubmitted, setIsSubmitted] = useState(false)

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault()
    if (phoneNumber) {
      setIsSubmitted(true)
      // Here you would typically send the phone number to your backend
      setTimeout(() => {
        setIsSubmitted(false)
        setPhoneNumber('')
      }, 3000)
    }
  }

  return (
    <section className="py-16 bg-gray-900 text-white">
      <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <div className="mb-8">
          <Smartphone className="h-12 w-12 text-rentify-green mx-auto mb-4" />
          <h2 className="text-3xl font-bold mb-4">
            App coming soon
          </h2>
          <p className="text-xl text-gray-300 mb-8">
            Join the waitlist for early access!
          </p>
        </div>

        {!isSubmitted ? (
          <form onSubmit={handleSubmit} className="max-w-md mx-auto">
            <div className="flex flex-col sm:flex-row gap-4">
              <input
                type="tel"
                placeholder="Enter your phone number"
                value={phoneNumber}
                onChange={(e) => setPhoneNumber(e.target.value)}
                className="flex-1 px-4 py-3 rounded-full bg-gray-800 border border-gray-700 text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-rentify-green focus:border-transparent"
                required
              />
              <button
                type="submit"
                className="bg-rentify-green text-white px-6 py-3 rounded-full font-semibold hover:bg-green-600 transition-colors"
              >
                Join Waitlist
              </button>
            </div>
          </form>
        ) : (
          <div className="max-w-md mx-auto p-4 bg-green-600/20 border border-green-600 rounded-full">
            <p className="text-green-400 font-medium">
              🎉 Thanks for joining! We'll notify you soon.
            </p>
          </div>
        )}

        <div className="mt-12 text-gray-400 text-sm">
          <p>Be the first to rent anything, anywhere in Mumbai</p>
          <p className="mt-2">Use karo, kharidna zaruri nahi</p>
        </div>
      </div>
    </section>
  )
}
