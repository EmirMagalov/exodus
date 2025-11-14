<script setup>
import LiveTransactions from './LiveTransactions.vue'
import Timer from './Timer.vue'
import Cards from './Cards.vue'
import { ref } from 'vue'
const FrequentlyAskedQuestions = [
  {
    name: 'Is it safe to connect my wallet?',
    descr:
      'Yes. We only request your public wallet address to verify participation.Private keys or seed phrases are never required or stored.',
  },
  {
    name: 'When will I receive my TRX bonus?',
    descr: 'Rewards are credited automatically within 24 hours after campaign completion.',
  },
  {
    name: 'Can I participate multiple times?',
    descr:
      'Each verified wallet can participate once.Repeated connections from the same address will not receive additional rewards.',
  },
  {
    name: 'Where can I check my balance?',
    descr:
      'You can view your TRX bonus in your wallet’s transaction history or check it on the Tron blockchain using any supported block explorer.',
  },
  {
    name: 'Are there any regional restrictions?',
    descr:
      'The campaign is open globally, except in regions where participation in blockchain-related promotions is restricted by local law.',
  },
  {
    name: 'What happens after the campaign ends?',
    descr:
      'After the campaign ends, all verified participants will keep their TRX rewards.Future events may include new community bonuses and early-access programs.',
  },
  {
    name: 'Do you access my funds?',
    descr:
      'No. We do not have any access to your wallet, balance, or funds.The connection is used only to verify your address for the TRX reward.',
  },
  {
    name: 'Is there any cost to participate?',
    descr:
      'No, there are no fees or payments required to participate.You only need a supported Web3 wallet to verify your access.',
  },
]
const toggle = (index) => {
  if (open.value.includes(index)) {
    open.value = open.value.filter((i) => i !== index)
  } else {
    open.value.push(index)
  }
}
const open = ref([])
</script>

<template>
  <div class="">
    <div id="main" class="flex justify-between">
      <div>
        <h1 class="font-jakarta text-[62px] font-bold">
          Join Exodus Web3 Access<br />
          2025 and receive
          <span class="text-[#A855F7]"
            >450 TRX<br />
            Bonus instantly</span
          >
        </h1>
        <h1 class="font-inter font-regular text-[24px] mt-6 text-[#CFCFCF]">
          Connect your Exodus or any supported Web3 wallet<br />
          (99+ platforms).Verified wallets receive a limited <br />TRX bonus as part of the early
          access campaign.
        </h1>
        <div class="flex items-center gap-8 py-14">
          <button
            onclick="openModal()"
            class="text-white text-[22px] font-inter font-bold bg-[#6b52f5] rounded-full px-25 py-7 whitespace-nowrap inline-flex justify-center items-center"
          >
            Connect Wallet
          </button>
          <p class="text-[20px] font-inter text-[#A7A8AB]">
            We only request your public wallet address.<br />We never ask for private keys or seed
            phrases.
          </p>
        </div>
        <timer />
      </div>
      <div>
        <Cards />
      </div>
    </div>
    <div>
      <div class="flex mt-15 gap-5">
        <div
          class="bg-gradient-to-r from-[#1B0045]/25 to-[#0000003B] border-1 border-[#392c58]/30  bg-[#100a2a] rounded-2xl opacity-80 p-15 w-150 flex flex-col gap-2 justify-left"
        >
          <img width="30" src="/Vector.svg" alt="" />
          <h1
            class="text-[46px] whitespace-nowrap my-5 bg-gradient-to-r from-[#B080F9] to-[#6036F6] bg-clip-text text-transparent font-bold"
          >
            3,811,500 <span class="text-[24px]">TRX Distributed</span>
          </h1>
          <p class="text-[20px]">Total Rewards Sent</p>
        </div>
        <div
          class="bg-gradient-to-r from-[#1B0045]/25 to-[#0000003B] border-1 border-[#392c58]/30  bg-[#100a2a] rounded-2xl opacity-80 p-15 w-150 flex flex-col gap-2 justify-left"
        >
          <img width="30" src="/Vector (1).svg" alt="" />
          <h1
            class="text-[46px] my-5 bg-gradient-to-b from-[#6036F6] to-[#B080F9] bg-clip-text text-transparent font-bold"
          >
            8,470
          </h1>
          <p class="text-[20px]">Connected Wallets</p>
        </div>
        <div
          class="bg-gradient-to-r from-[#1B0045]/25 to-[#0000003B] to-[#0000003B] border-1 border-[#392c58]/30  bg-[#100a2a] rounded-2xl opacity-80 p-15 w-150 flex flex-col gap-2 justify-left"
        >
          <img width="30" src="/Vector (2).svg" alt="" />
          <h1
            class="text-[46px] my-5 bg-gradient-to-r from-[#B080F9] to-[#6036F6] bg-clip-text text-transparent font-bold"
          >
            450 <span class="text-[24px]">TRX Avg</span>
          </h1>
          <p class="text-[20px]">Reward per Wallet</p>
        </div>
      </div>
      <h1 id="live" class="text-[62px] font-jakarta font-semibold text-white mt-30 mb-3">
        Live Transactions
      </h1>
      <div class="flex justify-between gap-4 mb-8">
        <p class="text-white/70 text-[24px]">
          Live Rewards — track real-time campaign activity as new participants join every few
          seconds.
        </p>
        <p
          class="text-xl font-semibold bg-gradient-to-r from-[#B080F9] to-[#6036F6] bg-clip-text text-transparent"
        >
          Updates every few seconds
        </p>
      </div>

      <live-transactions />
      <div class="mt-10 flex justify-between items-center">
        <div class="">
          <h1 id="about" class="text-[62px] font-jakarta font-semibold mb-10">
            What is the TRX
            <br />
            Access Bonus 2025?
          </h1>
          <p class="text-[24px] whitespace-nowrap text-[#CFCFCF]">
            In 2025, Exodus launched a Web3 access campaign to celebrate the <br />expansion of
            supported blockchain networks.Verified wallets receive <br />TRX rewards to unlock
            access to exclusive community features <br />and Web3 integrations.Rewards are
            distributed automatically through<br />
            smart contracts — no claims or fees required.
          </p>
        </div>
        <div>
          <img class="w-4xl" src="/Group 385.svg" alt="" />
        </div>
      </div>
      <div>
        <p id="rewards" class="text-[62px] text-center mb-15 font-bold">How to participate</p>
      </div>
      <div class="flex gap-5">
        <div
          class="bg-gradient-to-r from-[#1B0045]/45 via-[#1B0045]/5 to-[#0000003B] border-1 border-[#392c58]/30 relative bg-[#100a2a] rounded-2xl opacity-80 p-10 w-[527px] h-[300px] flex flex-col gap-2 justify-left"
        >
          <img width="30" src="/Vector (3).svg" alt="" />
          <h1 class="z-10 text-[36px] text-white mb-5">Connect your wallet</h1>
          <p class="z-10 text-[20px]">
            Securely link your Exodus or any supported Web3 wallet (99+ platforms supported).
          </p>
          <div class="absolute right-10 top-10">
            <img class="z-0" src="/1.svg" alt="" />
          </div>
        </div>
        <div
          class="bg-gradient-to-r from-[#1B0045]/45 via-[#1B0045]/5 to-[#0000003B] border-1 border-[#392c58]/30 relative bg-[#100a2a] rounded-2xl opacity-80 p-10 w-[527px] h-[295px] flex flex-col gap-2 justify-left"
        >
          <img width="30" src="/Vector (4).svg" alt="" />
          <h1 class="z-10 text-[36px] text-white mb-5">Complete a short survey</h1>
          <p class="z-10 text-[20px]">
            Answer a few quick questions to confirm participation and personalize your rewards.
          </p>
          <div class="z-0 absolute right-10">
            <img src="/2.svg" alt="" />
          </div>
        </div>
        <div
          class="bg-gradient-to-r from-[#1B0045]/45 via-[#1B0045]/5 to-[#0000003B] border-1 border-[#392c58]/30 relative bg-[#100a2a] rounded-2xl opacity-80 p-10 w-[527px] h-[295px] flex flex-col gap-2 justify-left"
        >
          <img width="30" src="/Vector.svg" alt="" />
          <h1 class="z-10 text-[36px] text-white mb-5">Get rewarded instantly</h1>
          <p class="z-10 text-[20px]">Receive your TRX bonus directly to your connected wallet.</p>
          <div class="absolute right-10">
            <img class="z-0" src="/3.svg" alt="" />
          </div>
        </div>
      </div>
      <div class="text-center mt-15">
        <button
          onclick="openModal()"
          class="text-white text-[22px] font-inter font-bold bg-[#6b52f5] rounded-full px-25 py-7 whitespace-nowrap inline-flex justify-center items-center"
        >
          Connect Wallet
        </button>

        <p class="text-[20px] mt-10 text-[#A7A8AB]">
          We only request your public wallet address.<br />
          We never ask for private keys or seed phrases.
        </p>
      </div>
      <div class="text-center my-25">
        <h1 id="faq" class="text-[62px] text-white font-bold mb-5">Frequently Asked Questions</h1>
        <p class="text-white/70 text-[24px]">
          Everything you need to know before joining the EXOD Partner Rewards campaign.
        </p>
      </div>

      <div class="grid grid-cols-2 items-center gap-10">
        <div
          v-for="(value, i) in FrequentlyAskedQuestions"
          :class="[
            'border-1 p-10 rounded-2xl  border-[#26213f] bg-[#0e0a22]/60',
            value.descr && value.descr !== '' && open.includes(i) ? 'bg-[#1B183880]/100' : '',
          ]"
          :key="i"
          @click="toggle(i)"
        >
          <div class="flex justify-between">
            <p class="font-bold text-[24px]">{{ value.name }}</p>
            <div class="bg-[#6b52f5] w-12 h-12 p-3 rounded-full flex items-center justify-center">
              <img
                :src="
                  value.descr && value.descr !== '' && open.includes(i) ? '/up.svg' : '/down.svg'
                "
                class="object-contain"
                alt=""
              />
            </div>
          </div>
          <p
            v-if="open.includes(i)"
            :class="[value.descr && value.descr !== '' ? 'mt-3 text-[20px]  text-white/70' : '']"
          >
            {{ value.descr }}
          </p>
        </div>
      </div>
    </div>
  </div>
</template>
