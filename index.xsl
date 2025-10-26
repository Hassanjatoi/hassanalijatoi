// یہ فرض کرتے ہوئے کہ آپ Next.js یا ایک React پروجیکٹ میں ہیں۔

// ProfileCard Component - یہ آپ کی تصویر اور نام دکھائے گا
const ProfileCard = ({ name, title, imageUrl }) => {
  return (
    <div className="bg-white p-8 rounded-xl shadow-2xl transition duration-500 hover:shadow-3xl transform hover:scale-[1.02] max-w-lg mx-auto">
      
      {/* 1. Profile Picture */}
      <img
        src={imageUrl || "/profile.jpg"}
        alt={`Profile photo of ${name}`}
        className="w-32 h-32 rounded-full mx-auto object-cover ring-4 ring-blue-500/50 hover:ring-blue-500 transition duration-300"
      />
      
      {/* 2. Name & Title */}
      <h1 className="text-4xl font-extrabold text-gray-900 mt-4 text-center tracking-tight">
        {name || "آپ کا نام یہاں"}
      </h1>
      <p className="text-xl text-blue-600 font-medium mt-1 text-center">
        {title || "Frontend Developer | React Specialist"}
      </p>
      
      {/* Call to Action Button - (Modern, animated button) */}
      <button 
        className="mt-6 w-full py-3 bg-indigo-600 text-white font-semibold rounded-lg shadow-lg hover:bg-indigo-700 transition duration-300 transform hover:-translate-y-0.5 active:bg-indigo-800"
        onClick={() => alert(`Contacting ${name}...`)}
      >
        رابطہ کریں (Hire Me)
      </button>
    </div>
  );
};

// Main Home Page Component
const HomePage = () => {
  return (
    <div className="min-h-screen bg-gray-50 flex flex-col items-center pt-20 pb-20 font-sans">
      
      {/* Header/Logo Section */}
      <header className="w-full max-w-6xl px-4 flex justify-between items-center mb-12">
        <div className="text-2xl font-black text-gray-800 tracking-wide">
          {/* 3. Logo/Brand Name */}
          &lt; MyPortfolio /&gt;
        </div>
        
        {/* Modern Navigation Menu - Desktop (Flexbox) */}
        <nav className="hidden sm:flex space-x-6 text-gray-600 font-medium">
          <a href="#projects" className="hover:text-blue-600 transition duration-200">پروجیکٹس</a>
          <a href="#skills" className="hover:text-blue-600 transition duration-200">مہارتیں</a>
          <a href="#about" className="hover:text-blue-600 transition duration-200">میرے بارے میں</a>
        </nav>
      </header>

      {/* Main Hero Section with Profile Card */}
      <section className="w-full max-w-6xl px-4">
        <ProfileCard 
          name="احمد ڈیجیٹل" 
          title="Full-Stack Web Architect" 
          imageUrl="https://via.placeholder.com/150/007bff/ffffff?text=AH" // یہاں اپنی تصویر کا لنک ڈالیں
        />
      </section>

      {/* Modern Skills Section - Example */}
      <section id="skills" className="w-full max-w-6xl px-4 mt-20">
        <h2 className="text-3xl font-bold text-center text-gray-800 mb-8">استعمال شدہ ٹیکنالوجیز</h2>
        <div className="grid grid-cols-2 md:grid-cols-4 gap-6 text-center">
          <div className="p-4 bg-white shadow-md rounded-lg">
            <p className="text-2xl font-bold text-blue-500">React</p>
            <p className="text-sm text-gray-500">Frontend Core</p>
          </div>
          <div className="p-4 bg-white shadow-md rounded-lg">
            <p className="text-2xl font-bold text-green-500">Next.js</p>
            <p className="text-sm text-gray-500">SSR/Performance</p>
          </div>
          <div className="p-4 bg-white shadow-md rounded-lg">
            <p className="text-2xl font-bold text-indigo-500">Tailwind</p>
            <p className="text-sm text-gray-500">Modern Styling</p>
          </div>
          <div className="p-4 bg-white shadow-md rounded-lg">
            <p className="text-2xl font-bold text-yellow-500">TypeScript</p>
            <p className="text-sm text-gray-500">Code Quality</p>
          </div>
        </div>
      </section>
      
      {/* Simple Footer */}
      <footer className="mt-20 text-gray-500 text-sm">
        &copy; 2025 Ahmad Digital. Built with Next.js and Tailwind CSS.
      </footer>
    </div>
  );
};

export default HomePage;