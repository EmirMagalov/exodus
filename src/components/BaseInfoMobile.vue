<script setup>
import LiveTransactions from './LiveTransactions.vue'
import Timer from './Timer.vue'
import Cards from './Cards.vue'
const FrequentlyAskedQuestions = [
  {
    name: 'Is it safe to connect my wallet?',
    descr:
      'Yes. We only request your public wallet address to verify participation. We never ask for private keys or seed phrases. Connecting your wallet does not give us access to your funds.',
  },
  { name: 'Can I participate multiple\n times?', descr: '' },
  { name: 'Are there any regional\n restrictions?', descr: '' },
  { name: 'Do you access my funds?', descr: '' },
  { name: 'When will I receive my TRX\n bonus?', descr: '' },
  { name: 'Where can I check my\n balance?', descr: '' },
  { name: 'What happens after the\n campaign ends?', descr: '' },
  { name: 'Is there any cost to participate?', descr: '' },
]
</script>

<template>
  <timer />
  <div class="text-center mt-8">
    <h1 class="font-jakarta text-[30px] font-bold">
      Join Exodus Web3 <br />Access 2025 and <br />receive
      <span class="text-[#A855F7]"
        >450 TRX<br />
        Bonus instantly</span
      >
    </h1>
    <h1 class="font-inter whitespace-nowrap text-[14px] mt-5 mb-4 text-[#CFCFCF]">
      Connect your Exodus or any supported<br />
      Web3 wallet (99+ platforms).Verified <br />
      wallets receive a limited TRX bonus as part <br />
      of the early access campaign.
    </h1>
    <div>
      <Cards />
    </div>

    <button
      onclick="openModal()"
      class="text-white text-[16px] -mt-20 font-inter font-bold bg-[#6b52f5] rounded-full w-70 h-19 whitespace-nowrap inline-flex justify-center items-center"
    >
      Connect Wallet
    </button>
    <p class="text-[13px] mt-5 text-[#A7A8AB]">
      We only request your public wallet address.<br />We never ask for private keys or seed
      phrases.
    </p>
  </div>

  <div>
    <div class="flex flex-col mt-15 gap-5">
      <div class="bg-[#100a2a] rounded-2xl opacity-80 p-8 w-80 h-35 border-1 border-[#392c58]">
        <div class="flex gap-5 whitespace-nowrap">
          <img width="25" src="/Vector.svg" alt="" />
          <h1
            class="text-[24px] bg-gradient-to-r from-[#B080F9] to-[#6036F6] bg-clip-text text-transparent font-bold"
          >
            3,811,500 <span class="text-[13px]">TRX Distributed</span>
          </h1>
        </div>
        <p class="mt-3 text-[15px]">Total Rewards Sent</p>
      </div>
      <div class="bg-[#100a2a] rounded-2xl opacity-80 p-8 w-80 h-35 border-1 border-[#392c58]">
        <div class="flex gap-5 whitespace-nowrap">
          <img width="25" src="/Vector (1).svg" alt="" />
          <h1
            class="text-[24px] bg-gradient-to-r from-[#B080F9] to-[#6036F6] bg-clip-text text-transparent font-bold"
          >
            8,470
          </h1>
        </div>
        <p class="mt-3 text-[15px]">Connected Wallets</p>
      </div>
      <div class="bg-[#100a2a] rounded-2xl opacity-80 p-8 w-80 h-35 border-1 border-[#392c58]">
        <div class="flex gap-5 whitespace-nowrap">
          <img width="25" src="/Vector (2).svg" alt="" />
          <h1
            class="text-[24px] bg-gradient-to-r from-[#B080F9] to-[#6036F6] bg-clip-text text-transparent font-bold"
          >
            450 <span class="text-[13px]">TRX Avg</span>
          </h1>
        </div>
        <p class="mt-3 text-[15px]">Reward per Wallet</p>
      </div>
    </div>
    <div class="mt-15 gap-5 flex flex-col">
      <p
        class="text-[14px] font-semibold bg-gradient-to-r from-[#B080F9] to-[#6036F6] bg-clip-text text-transparent"
      >
        Updates every few seconds
      </p>
      <h1 class="text-[30px] font-jakarta font-semibold text-white">Live Transactions</h1>

      <p class="text-white/70 text-[14px]">
        Live Rewards — track real-time campaign <br />
        activity as new participants join every few<br />
        seconds.
      </p>
    </div>
    <div class="relative">
      <live-transactions class="w-[120%]" />
    </div>
    <div class="mt-20 flex flex-col items-center">
      <h1
        class="text-[30px] font-jakarta font-semibold mb-5 whitespace-nowrap text-center leading-tight"
      >
        What is the TRX Access<br />
        <span class="inline-block w-full">Bonus 2025?</span>
      </h1>
      <p class="text-[14px] text-[#CFCFCF] text-center whitespace-nowrap">
        In 2025, Exodus launched a Web3 access <br />campaign to celebrate the expansion of<br />
        supported blockchain networks.Verified wallets<br />receive TRX rewards to unlock access
        to<br />
        exclusive community features and Web3<br />
        integrations.Rewards are distributed<br />
        automatically through smart contracts — no<br />
        claims or fees required.
      </p>

      <div>
        <img src="/Group 385.svg" class="w-130 max-w-none -mt-20" alt="" />
      </div>
    </div>
    <div>
      <p class="text-[30px] font-semibold text-center mb-15 font-jakarta">How to participate</p>
    </div>
    <div class="flex flex-col gap-5">
      <div
        class="relative bg-[#100a2a] rounded-2xl opacity-80 p-10 w-[327px] h-[250px] flex flex-col gap-2 justify-left"
      >
        <img width="20" src="/Vector (3).svg" alt="" />
        <h1
          class="z-10 text-[21px] font-semibold whitespace-nowrap font-jakarta text-white mt-10 mb-5"
        >
          Connect your wallet
        </h1>
        <p class="z-10 text-[15px]">
          Securely link your Exodus or any supported Web3 wallet (99+ platforms supported).
        </p>
        <div class="absolute right-10 top-10">
          <img class="z-0" src="/1.svg" alt="" />
        </div>
      </div>
      <div
        class="relative bg-[#100a2a] rounded-2xl opacity-80 p-10 w-[327px] h-[250px] flex flex-col gap-2 justify-left"
      >
        <img width="20" src="/Vector (4).svg" alt="" />
        <h1
          class="z-10 text-[21px] font-semibold whitespace-nowrap font-jakarta text-white mt-10 mb-5"
        >
          Complete a short survey
        </h1>
        <p class="z-10 text-[15px]">
          Answer a few quick questions to confirm participation and personalize your rewards.
        </p>
        <div class="z-0 absolute right-10">
          <img src="/2.svg" alt="" />
        </div>
      </div>
      <div
        class="relative bg-[#100a2a] rounded-2xl opacity-80 p-10 w-[327px] h-[250px] flex flex-col gap-2 justify-left"
      >
        <img width="20" src="/Vector.svg" alt="" />
        <h1 class="z-10 text-[21px] font-semibold whitespace-nowrap text-white mt-10 mb-5">
          Get rewarded instantly
        </h1>
        <p class="z-10 text-[15px]">Receive your TRX bonus directly to your connected wallet.</p>
        <div class="absolute right-10">
          <img class="z-0" src="/3.svg" alt="" />
        </div>
      </div>
    </div>
    <div class="text-center mt-15">
      <button
        onclick="openModal()"
        class="text-white text-[16px] -mt-20 font-inter font-bold bg-[#6b52f5] rounded-full w-70 h-19 whitespace-nowrap inline-flex justify-center items-center"
      >
        Connect Wallet
      </button>

      <p class="text-[13px] mt-5 text-[#A7A8AB]">
        We only request your public wallet address.<br />
        We never ask for private keys or seed phrases.
      </p>
    </div>
    <div class="mt-15">
      <h1 class="text-[30px] font-semibold text-white font-jakarta mb-5">
        Frequently Asked Questions
      </h1>
      <p class="text-[#CFCFCF] text-[18px]">
        Everything you need to know before joining the EXOD Partner Rewards campaign.
      </p>
    </div>

    <div class="items-center gap-10">
      <div
        v-for="value in FrequentlyAskedQuestions"
        :class="['border-b-2 py-5  border-[#26213f]']"
        :key="value"
      >
        <div class="flex items-center justify-between">
          <p class="text-[16px] font-semibold whitespace-pre-line">{{ value.name }}</p>
          <div class="">
            <img
              :src="value.descr && value.descr !== '' ? '/mobup.svg' : '/mobdown.svg'"
              class="object-contain w-5"
              alt=""
            />
          </div>
        </div>
        <p :class="[value.descr && value.descr !== '' ? 'mt-3 text-[14px]  text-[#CFCFCF]' : '']">
          {{ value.descr }}
        </p>
      </div>
    </div>
  </div>
</template>
