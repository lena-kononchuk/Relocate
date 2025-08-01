<template>
    <div>
        <section-hero-swiper class="scroller"></section-hero-swiper>
        <section-services :items="services">
            <template #title> Our Services</template>
            <template #button="{ item }">
                <router-link :to="item.buttonLink"
                             class="button button--primary">Find Out More</router-link>
            </template>
        </section-services>
        <section class="section section__modified">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-4 overflow">
                    <div class="image-wrapper"
                         ref="leftWrapper">
                        <div class="background"
                             :style="{ backgroundImage: 'url(' + leftImage + ')' }"
                             key="left"></div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-4 relative">
                    <div class="center-xs middle-sm"
                         style="padding: 20px;">
                        <div class="h2 box uppercase">Moving to Paradise</div>
                        <div class="text box">Have you ever dreamed about the perfect place to live? Your definition of
                            perfect
                            may be different someone else’s. Are you longing to live by the beach and listen to the
                            soothing
                            waves or are you a kind of person who enjoys the bustling sounds of the city? Whatever
                            lifestyle
                            you desire, Cyprus has it all! Whether you’re travelling with your family, your partner, or
                            as a
                            solo business entrepreneur, this exotic island can offer you a little bit of everything.
                        </div>
                        <router-link to="/immigration"
                                     class="button button--yellow">Find Out More</router-link>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-4 overflow">
                    <div class="image-wrapper"
                         ref="rightWrapper">
                        <div class="background"
                             :style="{ backgroundImage: 'url(' + rightImage + ')' }"
                             key="right"></div>
                    </div>
                </div>
            </div>
        </section>

        <section-services-items :items="servicesItems">
            <template #title> Why Choose Cyprus? </template>
            <template #text> When you’re searching for the ideal home you want everything to be perfect. This is why
                over the years more and more people from all around the world are choosing Cyprus as their ultimate
                destination. This smal Mediterranean mesmerizes millions of visitors every year.
            </template>
        </section-services-items>

        <section-location> </section-location>

        <section class="section section__purple">
            <div class="wrapper">
                <div class="row"
                     style="justify-content: space-between;">
                    <div class="col-xs-12 col-sm-7 col-md-7 white flex-vertical center-xs start-xs">
                        <div class="h2 box uppercase start-xs">Who We Are</div>
                        <div class="text box start-xs">Have you ever dreamed about the perfect place to live? Your
                            definition
                            of
                            PAM Consulting is built upon a team of motivated professionals aiming to provide
                            families
                            and businesses the services they need to relocate to the island of Cyprus.
                        </div>
                        <div class="text box3x start-xs">If you’ve made the decision to relocate to Cyprus, then you are
                            expecting
                            to
                            find
                            a safe place to settle. With extremely low crime rate, stunning sandy beaches, and
                            awe-inspiring
                            mountain views, Cyprus is the place to be!</div>
                        <div class="start-xs"><router-link to="/about"
                                         class="button button--yellow">More about us</router-link>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 center-xs">
                        <div class="row card card--grey">
                            <div class="col-xs-12 col-sm-12 center-xs">
                                <div class="background background__avatar lazyload box--small"
                                     style="background-image: url('/img/team/founder.jpg'); ">
                                </div>
                                <div class="h4 box purple">FOUNDER</div>
                                <div class="text box--small purple">Anastasia Papaharidemou</div>
                                <div class="text box2x">Founder and CEO, helps streamline and
                                    automate immigration
                                    complexity and enable informed relocation decisions at lower cost.</div>
                                <div class="center-xs"> <router-link to="/enquiry"
                                                 class="button button--yellow button--full">Contact</router-link></div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section-services-items :items="newServicesItems">
            <template #title> How we make it happen</template>
        </section-services-items>

        <contact-form></contact-form>
        <section-logo></section-logo>

        <section-swiper-faq> </section-swiper-faq>

    </div>
</template>

<script setup>
import { ref, onMounted, nextTick } from 'vue'
import gsap from 'gsap'

import SectionHeroSwiper from '../section/SectionHeroSwiper.vue';
import SectionServices from '../section/SectionServices.vue';
import SectionLocation from '../section/SectionLocation.vue';
import SectionLogo from '../section/SectionLogo.vue';
import ContactForm from '../components/ContactForm.vue';

import SectionServicesItems from '../section/SectionServicesItems.vue';
import SectionSwiperFaq from '../section/SectionSwiperFaq.vue';



const services = [
    {
        image: '/img/services/services_family.jpg',
        subtitle: 'Family Relocation',
        text: 'With strategic planning, we simplify the moving process so you and your family can feel safe and confident.',
        buttonLink: '/services-family',
    },
    {
        image: '/img/services/services_business.jpg',
        subtitle: 'Business Relocation',
        text: 'We handle the responsibility of moving your business to Cyprus, so you can focus on your business goals.',
        buttonLink: '/services-business',

    },
    {
        image: '/img/services/services_investment.jpg',
        subtitle: 'Investment plans',
        text: 'Discover the opportunity to further enhance your business ambitions, by choosing the optimal investment plan.',
        buttonLink: '/services-investments',

    },
];

const servicesItems = [
    {
        image: '/img/services/services_slide1.png',
        title: 'Progressive tax system',
        text: 'Offering one of the most attractive tax regimes in Europe'
    },
    {
        image: '/img/services/services_slide2.png',
        title: 'Stunning weather and climate',
        text: 'Enjoy a high quality of life with over 324 days of sun annually'
    },
    {
        image: '/img/services/services_slide3.png',
        title: 'Blooming expat community',
        text: 'Become part of an increasingly diverse community'
    },
    {
        image: '/img/services/services_slide4.png',
        title: 'Family-oriented values',
        text: 'Excellent education standards and extremely low crime rates'
    },
]

const newServicesItems = [
    {
        image: '/img/services/new-services1.png',
        title: 'We listen',
        text: 'Our most prominent purpose is to understand and identify with your needs so we can effectively find ways to provide solutions.'
    },
    {
        image: '/img/services/new-services2.png',
        title: 'We strategize',
        text: 'According to your requirements, our team designs a thorough series of steps that will make the relocation process as smooth  as possible.'
    },
    {
        image: '/img/services/new-services3.png',
        title: 'We provide',
        text: 'We implement our services that are based on efficient strategic planning that respond to your family’s and business’s goals and ambitions.'
    },
    {
        image: '/img/services/new-services4.png',
        title: 'We manage',
        text: 'Once you are settled, we make sure that everything is according to your expectations and your vision of the quality of our services.'
    },
]


const leftImages = [
    '/img/move/image1.jpg',
    '/img/move/image2.jpg',
    '/img/move/image3.jpg',
]

const rightImages = [
    '/img/move/image4.jpg',
    '/img/move/image5.jpg',
    '/img/move/image6.jpg',
]


const leftImage = ref(leftImages[0])
const rightImage = ref(rightImages[0])
let leftIndex = 0
let rightIndex = 0

const leftWrapper = ref(null)
const rightWrapper = ref(null)
onMounted(async () => {
  await nextTick()

  // Lazy-load initial images when wrappers enter viewport
  if ('IntersectionObserver' in window) {
    const observer = new IntersectionObserver(entries => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          if (entry.target === leftWrapper.value && !leftImage.value) {
            leftImage.value = leftImages[0]
            observer.unobserve(leftWrapper.value)
          }
          if (entry.target === rightWrapper.value && !rightImage.value) {
            rightImage.value = rightImages[0]
            observer.unobserve(rightWrapper.value)
          }
        }
      })
    })

    if (leftWrapper.value) observer.observe(leftWrapper.value)
    if (rightWrapper.value) observer.observe(rightWrapper.value)
  } else {
    // Fallback load images immediately
    loadInitialImages()
  }

  // Delay preload of next slides images (3s)
  setTimeout(() => {
    const preloadImages = [
      ...leftImages.slice(1),
      ...rightImages.slice(1),
    ]
    preloadImages.forEach(src => {
      const link = document.createElement('link')
      link.rel = 'preload'
      link.as = 'image'
      link.href = src
      document.head.appendChild(link)
    })
  }, 3000)

  setInterval(() => {
    animateImageChange(leftWrapper.value, 'left')
    animateImageChange(rightWrapper.value, 'right')
  }, 5000)
})

function animateImageChange(wrapper, side) {

    if (!wrapper) return

    const oldBg = wrapper.querySelector('.background')
    if (!oldBg) return

    // const oldBg = wrapper.querySelector('.background')

    // clone current image
    const clone = oldBg.cloneNode(true)
    clone.style.position = 'absolute'
    clone.style.top = '0'
    clone.style.left = '0'
    clone.style.right = '0'
    clone.style.bottom = '0'
    wrapper.appendChild(clone)

    // update source
    if (side === 'left') {
        leftIndex = (leftIndex + 1) % leftImages.length
        leftImage.value = leftImages[leftIndex]
    } else {
        rightIndex = (rightIndex + 1) % rightImages.length
        rightImage.value = rightImages[rightIndex]
    }

    // wait for DOM update
    nextTick(() => {
        const newBg = wrapper.querySelector('.background')

        // animate new image in
        gsap.fromTo(
            newBg,
            { opacity: 0, y: 40 },
            { opacity: 1, y: 0, duration: 1.2, ease: 'power2.out' }
        )

        // animate old image out
        gsap.to(clone, {
            opacity: 0,
            y: -40,
            duration: 1,
            ease: 'power2.in',
            onComplete: () => wrapper.removeChild(clone),
        })
    })
}
</script>

<style scoped>
.image-wrapper {
    position: relative;
    height: 380px;
    overflow: hidden;
}

</style>
