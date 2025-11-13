<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const cards = [
  '/Binance.svg',
  '/Solana.svg',
  '/MetaMask.svg',
  '/Coinbase.svg',
  '/Exodus.svg',
  '/Bybit.svg',
]

// индексы текущих 3 карточек
const visible = ref([0, 1, 2])
let interval

function nextCard() {
  visible.value = [
    visible.value[1] % cards.length,
    visible.value[2] % cards.length,
    (visible.value[2] + 1) % cards.length,
  ]
}

onMounted(() => {
  interval = setInterval(nextCard, 5000)
})

onUnmounted(() => clearInterval(interval))
</script>

<template>
  <div
    class="mt-0 md:mt-20 fade-bottom border-t-2 border-l-2 border-r-2 border-dashed border-[#A07CDA4D]/8 p-2 md:p-7 rounded-t-2xl md:rounded-t-4xl overflow-hidden"
  >
    <div
      class="border-t-2 border-l-2 border-r-2 border-dashed border-[#A07CDA4D]/15 p-2 md:p-7 rounded-t-2xl md:rounded-t-4xl overflow-hidden"
    >
      <div
        class="flex flex-col gap-2 md:gap-5 p-4 md:p-10 h-[200px] md:h-[470px] rounded-t-2xl md:rounded-t-4xl outline-[#403b60] border-t-2 border-l-2 border-r-2 border-dashed border-[#A07CDA4D]/40 overflow-hidden"
      >
        <!-- Transition Group для анимации смены карточек -->
        <TransitionGroup tag="div" name="slide" class="flex flex-col gap-2 md:gap-5" appear>
          <img
            v-for="(idx, i) in visible"
            :key="cards[idx]"
            :src="cards[idx]"
            :class="[
              i === 0
                ? 'z-30'
                : i === 1
                  ? 'z-20 opacity-80 md:opacity-30'
                  : 'z-10 opacity-80 md:opacity-15',
              'w-full h-auto object-contain transition-all duration-1000 ease-in-out',
            ]"
            alt="Crypto wallet logo"
          />
        </TransitionGroup>
      </div>
    </div>
  </div>
</template>

<style scoped>
.fade-bottom {
  -webkit-mask-image: linear-gradient(
    to bottom,
    rgba(0, 0, 0, 1) 30%,
    rgba(0, 0, 0, 0.6) 70%,
    rgba(0, 0, 0, 0) 85%,
    rgba(0, 0, 0, 0) 100%
  );
  -webkit-mask-repeat: no-repeat;
  -webkit-mask-size: cover;

  mask-image: linear-gradient(
    to bottom,
    rgba(0, 0, 0, 1) 30%,
    rgba(0, 0, 0, 0.4) 70%,
    rgba(0, 0, 0, 0) 85%,
    rgba(0, 0, 0, 0) 100%
  );
  mask-repeat: no-repeat;
  mask-size: cover;
}

/* Анимация сдвига и появления */
.slide-enter-active,
.slide-leave-active {
  transition: all 1s cubic-bezier(0.4, 0, 0.2, 1);
}

/* .slide-enter-from {
  opacity: 0;
  transform: translateX(100%);
} */

.slide-leave-to {
  opacity: 0;
  transform: translateX(-100%);
}

.slide-leave-active {
  position: absolute;
  width: 0;
  height: 0;
}

/* Чтобы карточки не "прыгали" при смене */
.transition-group {
  position: relative;
}
</style>
