<template>
  <div class="flex bg-[#201a48] mt-[50px] justify-between items-center mb-10 p-4 rounded-full">
    <div class="ml-[20px]">
      <img src="/logo.svg" alt="" />
    </div>
    <div class="flex gap-15 text-[18px] font-inter text-[18px] items-center text-[#CFCFCF]">
      <p class="text-white">Main</p>
      <p>Live Transactions</p>
      <p>About</p>
      <p>Rewards System</p>
      <p>FAQ</p>
      <button
        onclick="openModal()"
        class="text-white py-[19px] px-[58px] bg-[#392d85] text-[15px] rounded-full"
      >
        Connect Wallet
      </button>
    </div>
  </div>
</template>
