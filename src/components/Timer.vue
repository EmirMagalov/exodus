<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
const TimerStyle = 'bg-[#412b8e] w-8 h-10 md:w-16 md:h-20  flex items-center justify-center  rounded-lg border-1 border-[#403b60]'
const days = ref(1)
const hours = ref(23)
const minutes = ref(59)
const seconds = ref(59)

// === ГЛОБАЛЬНАЯ ТОЧКА ОТСЧЁТА (одинакова у всех!) ===
const CYCLE_START = new Date('2025-11-01T00:00:00+03:00').getTime()
const CYCLE_MS = 2 * 24 * 60 * 60 * 1000 // 2 дня = 172800000 мс

let timer = null

const update = () => {
  const now = Date.now()
  const elapsed = (now - CYCLE_START) % CYCLE_MS
  const remaining = CYCLE_MS - elapsed

  days.value = String(Math.floor(remaining / (1000 * 60 * 60 * 24))).padStart(2, '0')
  hours.value = String(Math.floor((remaining % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60))).padStart(
    2,
    '0',
  )
  minutes.value = String(Math.floor((remaining % (1000 * 60 * 60)) / (1000 * 60))).padStart(2, '0')
  seconds.value = String(Math.floor((remaining % (1000 * 60)) / 1000)).padStart(2, '0')
}

onMounted(() => {
  update()
  timer = setInterval(update, 1000)
})

onUnmounted(() => clearInterval(timer))
</script>

<style scoped>
/* Плавная анимация при смене цифр */
div[class*='bg-white'] > div:first-child {
  transition: all 0.3s ease-out;
}
</style>

<template>
  <div class="flex text-lg  md:text-4xl gap-1 md:gap-2 md:gap-5 items-baseline">
    <!-- Цифры + подпись -->
    <div class="flex flex-col items-center">
      <div class="flex text gap-1 md:gap-2 mb-2 md:mb-5 font-bold">
        <p :class="TimerStyle">{{ days[0] }}</p>
        <p :class="TimerStyle">{{ days[1] }}</p>
      </div>
      <p class="text-center text-[9px] md:text-[23px] font-inter text-[#FFFFFF] mt-1">days</p>
    </div>

    <!-- Точки -->
     <h1 class="text-xl md:text-5xl">:</h1>
    <!-- <img class="object-contain w-1 md:w-full" src="/_.svg" alt="" /> -->
    <div class="flex flex-col items-center">
      <div class="flex text gap-1 md:gap-2 mb-2 md:mb-5 font-bold">
        <p :class="TimerStyle">{{ hours[0] }}</p>
        <p :class="TimerStyle">{{ hours[1] }}</p>
      </div>
      <p class="text-center text-[9px] md:text-[23px] font-inter text-[#FFFFFF] mt-1">hours</p>
    </div>

    <!-- Точки -->
     <h1 class="text-xl md:text-5xl">:</h1>
    <div class="flex flex-col items-center">
      <div class="flex text gap-1 md:gap-2 mb-2 md:mb-5 font-bold">
        <p :class="TimerStyle">{{ minutes[0] }}</p>
        <p :class="TimerStyle">{{ minutes[1] }}</p>
      </div>
      <p class="text-center text-[9px] md:text-[23px] font-inter text-[#FFFFFF] mt-1">minutes</p>
    </div>

    <!-- Точки -->
     <h1 class="text-xl md:text-5xl">:</h1>
    <div class="flex flex-col items-center">
      <div class="flex text gap-1 md:gap-2 mb-2 md:mb-5 font-bold">
        <p :class="TimerStyle">{{ seconds[0] }}</p>
        <p :class="TimerStyle">{{ seconds[1] }}</p>
      </div>
      <p class="text-center text-[9px] md:text-[23px] font-inter text-[#FFFFFF] mt-1">seconds</p>
    </div>

    <!-- Точки -->
  </div>
</template>
