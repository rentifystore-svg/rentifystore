import Navbar from '@/components/Navbar'
import Hero from '@/components/Hero'
import CategoryPills from '@/components/CategoryPills'
import TrendingNearby from '@/components/TrendingNearby'
import MapSnippet from '@/components/MapSnippet'
import EarnExtraBanner from '@/components/EarnExtraBanner'
import TrustSection from '@/components/TrustSection'
import WaitlistFooter from '@/components/WaitlistFooter'

export default function Home() {
  return (
    <main className="min-h-screen bg-white">
      <Navbar />
      <Hero />
      <CategoryPills />
      <TrendingNearby />
      <MapSnippet />
      <EarnExtraBanner />
      <TrustSection />
      <WaitlistFooter />
    </main>
  )
}
