<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const scrolled = ref(false)
const showHeader = ref(true)
const activeSection = ref('main')

const sections = ['main', 'live', 'about', 'rewards', 'faq']
let hideTimeout = null
const resetTimer = () => {
  // Если вверху — всегда показываем и не скрываем
  if (window.scrollY < 100) {
    showHeader.value = true
    if (hideTimeout) clearTimeout(hideTimeout)
    return
  }

  showHeader.value = true

  // Таймер скрытия
  if (hideTimeout) clearTimeout(hideTimeout)
  hideTimeout = setTimeout(() => {
    showHeader.value = false
  }, 2000)
}
const handleScroll = () => {
  scrolled.value = window.scrollY > 100
  resetTimer()
  // Если вверху страницы — шапка всегда видна
  if (window.scrollY < 100) {
    showHeader.value = true
    if (hideTimeout) clearTimeout(hideTimeout)
    return
  }

  // Показываем шапку при скролле
  // showHeader.value = true

  // // Сбрасываем таймер
  // if (hideTimeout) clearTimeout(hideTimeout)
  // hideTimeout = setTimeout(() => {
  //   showHeader.value = false
  // }, 2000) // 5 секунд без движения

  // Подсветка активного раздела
  sections.forEach((id) => {
    const el = document.getElementById(id)
    if (el) {
      const top = el.getBoundingClientRect().top
      const offset = 90
      if (top <= offset && top + el.offsetHeight > offset) {
        activeSection.value = id
      }
    }
  })
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
  window.addEventListener('mousemove', resetTimer) // << добавлено
})
onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
  window.removeEventListener('mousemove', resetTimer)
})
</script>

<template>
  <div
    :class="[
      'rounded-full left-0 z-50 bg-[#201a48] p-4 flex justify-between items-center shadow-md transition-all duration-500 ease-in-out transform',
      scrolled ? 'fixed mx-auto left-0 right-0 w-[85vw]' : '',
      showHeader ? 'opacity-100 scale-100' : 'opacity-0 scale-95',
    ]"
  >
    <div class="ml-[20px]">
      <img src="/logo.svg" alt="" />
    </div>
    <div class="flex gap-15 text-[18px] font-inter items-center text-[#CFCFCF]">
      <a :class="activeSection === 'main' ? 'text-white' : ''" href="#main">Main</a>
      <a :class="activeSection === 'live' ? 'text-white' : ''" href="#live">Live Transactions</a>
      <a :class="activeSection === 'about' ? 'text-white' : ''" href="#about">About</a>
      <a :class="activeSection === 'rewards' ? 'text-white' : ''" href="#rewards">Rewards System</a>
      <a :class="activeSection === 'faq' ? 'text-white' : ''" href="#faq">FAQ</a>
      <button
        onclick="openModal()"
        class="text-white py-[19px] px-[58px] bg-[#392d85] text-[15px] rounded-full"
      >
        Connect Wallet
      </button>
    </div>
  </div>

  <!-- Отступ под фиксированную шапку -->
  <div v-if="scrolled" class="h-[90px]"></div>
</template>
