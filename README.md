# Relocate

Professional website for relocation and immigration consultancy services. Modern single-page application with smooth animations and interactive features.

## About

Relocate is a comprehensive web platform designed for immigration and relocation consultancy services. The website showcases various relocation services, provides detailed information about immigration processes, and offers direct contact channels for potential clients.

## Key Features

- 🏠 **Landing Pages** - Home, About, Services, Immigration, Contact
- 📋 **Service Categories**
  - Business relocation consulting
  - Family immigration assistance
  - Investment opportunities guidance
- 📧 **Contact Form** - Enquiry submission with email notifications
- ❓ **FAQ Section** - Dynamic frequently asked questions with API backend
- 🗺️ **Google Maps Integration** - Interactive office location maps
- ✨ **Smooth Animations** - GSAP-powered parallax effects and scroll animations
- 🎠 **Image Sliders** - Swiper.js carousels for visual content
- 📱 **Responsive Design** - Optimized for all devices
- 🎨 **Modern UI** - Professional, clean interface with LESS styling

## Tech Stack

### Backend
- **Laravel 11** - PHP framework for API and backend logic
- **MySQL 8.0** - Relational database
- **Laravel Sail** - Docker development environment

### Frontend
- **Vue 3** - JavaScript framework with Composition API
- **Vue Router 4** - Client-side routing and navigation
- **Vite** - Fast build tool and development server
- **GSAP** - Professional-grade animation library
- **Swiper** - Touch-enabled slider component
- **Vee-Validate** - Form validation
- **Axios** - HTTP client for API requests
- **Google Maps API** - Interactive maps
- **LESS** - CSS preprocessor for advanced styling
- **Lazysizes** - Lazy loading for images and backgrounds

## Project Structure

```
Relocate/
├── app/
│   ├── Http/Controllers/
│   │   ├── EnquiryController.php    # Contact form handler
│   │   └── FaqController.php        # FAQ API endpoint
│   └── Models/
│       ├── Enquiry.php
│       └── Faq.php
├── resources/
│   ├── js/
│   │   ├── pages/                   # Page components
│   │   │   ├── HomePage.vue
│   │   │   ├── AboutPage.vue
│   │   │   ├── ServicesPage.vue
│   │   │   ├── ImmigrationPage.vue
│   │   │   └── ContactPage.vue
│   │   ├── components/              # Reusable components
│   │   │   ├── Navigation.vue
│   │   │   └── NavMobile.vue
│   │   ├── section/                 # Page sections
│   │   │   ├── SectionHeroSwiper.vue
│   │   │   ├── SectionServices.vue
│   │   │   ├── SectionLocation.vue
│   │   │   └── SectionSwiperFaq.vue
│   │   ├── directives/              # Vue directives
│   │   ├── app.js                   # Vue app initialization
│   │   └── router.js                # Route definitions
│   ├── less/                        # Stylesheets
│   └── views/
│       └── welcome.blade.php        # Main layout
├── routes/
│   ├── web.php                      # Web routes
│   └── api.php                      # API routes
└── database/
    ├── migrations/                  # Database structure
    └── seeders/                     # Sample data
```

## Getting Started with Laravel Sail

```bash
# Clone repository
git clone https://github.com/lena-kononchuk/Relocate.git
cd Relocate

# Install dependencies
composer install
npm install

# Start Docker containers
./vendor/bin/sail up -d

# Run migrations and seed database
./vendor/bin/sail artisan migrate
./vendor/bin/sail artisan db:seed --class=FaqSeeder

# Build frontend assets
npm run dev
```

Access the application at `http://localhost`

## API Endpoints

- `GET /api/faqs` - Fetch all FAQ items
- `POST /api/enquiry` - Submit contact form
- `GET /health` - Application health check

## Key Features Explained

### Dynamic Page Sections
Each page is built from reusable Vue components with smooth scroll animations triggered on viewport entry.

### Smooth Animations
GSAP powers all animations including:
- Hero section parallax effects
- Fade-in scroll animations
- Image transitions
- Menu interactions

### Contact Form
Full-featured enquiry form with:
- Client-side validation (Vee-Validate)
- Server-side processing
- Email notifications
- Success/error feedback

### FAQ System
Dynamic FAQ section powered by Laravel API with:
- Database-driven content
- Swiper carousel presentation
- Easy content management

---

**Note:** This is an educational project demonstrating modern full-stack web development with Laravel and Vue 3.
