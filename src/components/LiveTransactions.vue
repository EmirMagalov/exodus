<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const Transactions = ref([
  { Address: '0x3a0dE49a0f…AabC', Amount: '+ 450 TRX', Time: '8 sec ago' },
  { Address: '0xf91ae0b49c…7F2a', Amount: '+ 450 TRX', Time: '12 sec ago' },
  { Address: '0xb0a9d13f8a…C87e', Amount: '+ 450 TRX', Time: '20 sec ago' },
  { Address: '0x7e2bF3a6E1…4A19', Amount: '+ 450 TRX', Time: '28 sec ago' },
  { Address: '0x4F19b0E12a…9D35', Amount: '+ 450 TRX', Time: '32 sec ago' },
])

const displayed = ref([])
let interval = null

const rotate = () => {
  displayed.value.pop()

  const randomTx = Transactions.value[Math.floor(Math.random() * Transactions.value.length)]
  const newTx = {
    ...randomTx,
    isLive: true,
    timestamp: Date.now(),
    id: Date.now() + Math.random(),
  }
  displayed.value.unshift(newTx)
}

const formatLiveTime = (timestamp) => {
  const seconds = Math.floor((Date.now() - timestamp) / 1000)
  if (seconds < 5) return '1 sec ago'
  if (seconds < 60) return `${seconds} sec ago`
  const mins = Math.floor(seconds / 60)
  return `${mins} min ago`
}

const onBeforeLeave = (el) => {
  const parent = el.parentNode
  const placeholder = document.createElement('div')
  placeholder.style.height = `${el.offsetHeight}px`
  placeholder.className = 'transition-all duration-400 ease-in-out'
  parent.insertBefore(placeholder, el)

  requestAnimationFrame(() => {
    placeholder.style.height = '0'
    placeholder.style.opacity = '0'
  })

  setTimeout(() => {
    if (placeholder.parentNode) placeholder.remove()
  }, 400)
}

onMounted(() => {
  displayed.value = Transactions.value
    .slice(0, 5)
    .map((tx) => ({ ...tx, isLive: false, id: Math.random() }))
  interval = setInterval(rotate, 5000)
})

onUnmounted(() => {
  if (interval) clearInterval(interval)
})
</script>

<template>
  <div class="mt-5 md:mt-20 px-0 md:px-4">
    <div
      class="border border-[#282243] rounded-2xl backdrop-blur-sm bg-[#0f0b26]/80 overflow-x-auto md:overflow-x-hidden"
    >
      <div class="min-w-[800px]">
        <!-- Заголовки -->
        <div class="flex md:gap-60 px-6 pt-5 pb-3 md:pb-5 text-[13px] md:text-[20px] text-white/50">
          <p class="w-[200px] text-left">Address</p>
          <p class="w-[120px] text-center">Amount</p>
          <p class="w-[200px] text-center">Status</p>
          <p class="w-[100px] text-right">Time</p>
        </div>

        <hr class="border-t border-[#282243] mx-6" />

        <!-- Список с фиксированной высотой -->
        <div class="px-6 pt-5 pb-5 max-h-[540px] overflow-y-auto">
          <transition-group name="list" tag="div" class="flex flex-col">
            <div
              v-for="tx in displayed"
              :key="tx.id"
              class="flex mb-3 md:gap-60 items-center px-2 md:px-6  rounded-xl bg-gradient-to-r from-[#2C2B4C]/20 to-[#212235]/20 hover:from-[#2C2B4C]/30 hover:to-[#212235]/30 transition-all duration-200 min-h-[40px] md:min-h-[80px]"
            >
              <!-- Address -->
              <div class="flex w-[200px] items-center gap-3 flex-shrink-0">
                <div class="p-3 bg-[#2CCC78]/10 rounded-sm flex-shrink-0">
                  <img src="/downleft.svg" class="w-1.5 md:w-6 md:h-6" alt="" />
                </div>
                <p class="font-mono text-[10px] md:text-[18px] text-white/90 truncate">
                  {{ tx.Address }}
                </p>
              </div>

              <!-- Amount -->
              <div class="w-[120px] text-center flex-shrink-0">
                <p class="text-white font-bold text-[12px] md:text-[20px]">{{ tx.Amount }}</p>
              </div>

              <!-- Status -->
              <div
                class="w-[200px] text-center flex items-center justify-center gap-2 flex-shrink-0"
              >
                <img src="/complacted.svg" class="w-3 h-3 md:w-5 md:h-5" alt="" />
                <p class="text-[#2CCC78] text-[12px] md:text-[20px]">Completed</p>
              </div>

              <!-- Time -->
              <div class="w-[120px] text-right flex-shrink-0">
                <p class="text-white/60 text-[12px] md:text-[20px]">
                  {{ tx.isLive ? formatLiveTime(tx.timestamp) : tx.Time }}
                </p>
              </div>
            </div>
          </transition-group>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.list-enter-from {
  transform: translateY(-20px);
  opacity: 0;
}
.list-enter-to {
  transform: translateY(0);
  opacity: 1;
}
.list-enter-active {
  transition:
    transform 0.3s ease,
    opacity 0.3s ease;
}

.list-leave-from {
  transform: translateY(0);
  opacity: 1;
}
.list-leave-to {
  transform: translateY(20px);
  opacity: 0;
}
.list-leave-active {
  position: absolute; /* Убирает влияние на поток */
  left: 0;
  right: 0;
  transition:
    transform 0.3s ease,
    opacity 0.3s ease;
}
</style>
