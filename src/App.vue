<script setup>
import BaseInfo from './components/BaseInfo.vue'
import BaseInfoMobile from './components/BaseInfoMobile.vue'
import ExodusBackground from './components/ExodusBackground.vue'
import Headers from './components/Headers.vue'
import HeadersMobile from './components/HeadersMobile.vue'
import Footer from './components/Footer.vue'
import FooterMobile from './components/FooterMobile.vue'
import { useMediaQuery } from '@vueuse/core'
const isMobile = useMediaQuery('(max-width: 768px)')
</script>

<template>
  <exodus-background />
  <div class="w-[85vw] m-auto min-h-screen mb-15">
    <headers-mobile v-if="isMobile" />
    <headers v-else />
    <base-info-mobile v-if="isMobile" />
    <base-info v-else />
  </div>
  <FooterMobile v-if="isMobile" />
  <Footer v-else />
</template>
