<script setup>
const scrollToSection = (id) => {
  const el = document.getElementById(id)
  if (!el) return

  const offset = 250 // сколько пикселей оставить сверху

  const top = el.getBoundingClientRect().top + window.scrollY - offset

  window.scrollTo({
    top,
  })
}
</script>

<template>
  <div class="p-8 bg-black items-center justify-center">
    <div class="w-[90%] justify-between items-center">
      <div class="">
        <img src="/logo.svg" alt="" />
      </div>

      <div class="flex flex-col items-start mt-8 gap-8 text-[17px] items-center text-[#CFCFCF]">
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

        <div class="grid grid-cols-4 items-center gap-8 mx-auto">
          <img src="/linkedin.svg" alt="" />
          <img src="/diskord.svg" alt="" />
          <img src="/github.svg" alt="" />
          <img src="/youtube.svg" alt="" />
          <img src="/reddis.svg" alt="" />
          <img src="/X.svg" alt="" />
          <img src="/instagram.svg" alt="" />
          <img src="/facebook.svg" alt="" />
        </div>
      </div>
      <div class="flex flex-col gap-10 mt-10 text-white/60">
        <p>Terms of Service</p>
        <p>Privacy Policy</p>
        <p class="mt-5 text-[11px] text-[#FFFFFF]/30">
          TRX rewards are provided as part of a limited promotional campaign.This event is not a
          financial or investment offer.Rewards are distributed automatically via the Tron
          blockchain for verified wallet addresses.
        </p>
      </div>
    </div>
  </div>
</template>
