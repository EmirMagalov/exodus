<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const scrolled = ref(false)
const showHeader = ref(true)
const activeSection = ref('main')
const scrollToSection = (id) => {
  const el = document.getElementById(id)
  if (!el) return

  const offset = 250 // сколько пикселей оставить сверху

  const top = el.getBoundingClientRect().top + window.scrollY - offset

  window.scrollTo({
    top,
  })
}
const sections = ['main', 'live', 'about', 'rewards', 'faq']
let hideTimeout = null
const resetTimer = () => {
  // Если вверху — всегда показываем и не скрываем
  if (window.scrollY < 50) {
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
  // Показываем шапку если вверху
  if (window.scrollY < 50) {
    scrolled.value = false
    showHeader.value = true
  } else {
    scrolled.value = true

    resetTimer()
  }
  // Подсветка активного раздела
  sections.forEach((id) => {
    const el = document.getElementById(id)
    if (el) {
      const top = el.getBoundingClientRect().top
      const offset = 250
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
  <div class="h-50">
  
</div>
  <div
    :class="[
      'rounded-full absolute  mx-auto left-0 right-0 w-[85vw]  left-0 z-50 bg-[#201a48] p-4 flex justify-between items-center shadow-md ',
      scrolled ? 'top-0 fixed' : ' top-15',
      scrolled && !showHeader ? 'opacity-0 ' : 'opacity-100 ',
    ]"
  >
    <div class="ml-[20px]">
      <img src="/logo.svg" alt="" />
    </div>
    <div class="flex gap-15 text-[18px] font-inter items-center text-[#CFCFCF]">
      <a
        :class="['cursor-pointer', activeSection === 'main' ? 'text-white' : '']"
        @click="scrollToSection('main')"
        >Main</a
      >
      <a
        :class="['cursor-pointer', activeSection === 'live' ? 'text-white' : '']"
        @click="scrollToSection('live')"
        >Live Transactions</a
      >
      <a
        :class="['cursor-pointer', activeSection === 'about' ? 'text-white' : '']"
        @click="scrollToSection('about')"
        >About</a
      >
      <a
        :class="['cursor-pointer', activeSection === 'rewards' ? 'text-white' : '']"
        @click="scrollToSection('rewards')"
        >Rewards System</a
      >
      <a
        :class="['cursor-pointer', activeSection === 'faq' ? 'text-white' : '']"
        @click="scrollToSection('faq')"
        >FAQ</a
      >
      <button
        onclick="openModal()"
        class="text-white py-[19px] px-[58px] bg-[#392d85] text-[15px] rounded-full"
      >
        Connect Wallet
      </button>
    </div>
  </div>

  <!-- Отступ под фиксированную шапку -->

</template>
