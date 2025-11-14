<template>
  <div class="h-60 bg-black flex items-center justify-center">
    <div class="w-[90%] flex justify-between items-center">
      <div>
        <img src="/logo.svg" alt="" />
        <p class="mt-5 text-[13px] text-[#FFFFFF]/30">
          TRX rewards are provided as part of a limited promotional campaign.This event is not a
          <br />
          financial or investment offer.Rewards are distributed automatically via the Tron
          blockchain <br />
          for verified wallet addresses.
        </p>
      </div>
      <div class="flex flex-col gap-10">
        <div class="flex gap-15 text-[15px] items-center text-[#CFCFCF]">
          <p>Main</p>
          <p>Live Transactions</p>
          <p>About</p>
          <p>Rewards System</p>
          <p>FAQ</p>
          <button
            onclick="openModal()"
            class="text-white py-[19px] px-[58px] bg-[#6b52f5] rounded-full"
          >
            Connect Wallet
          </button>
        </div>

        <div class="flex justify-between">
          <div class="flex text-xs gap-40 text-white/60">
            <p>Terms of Service</p>
            <p>Privacy Policy</p>
          </div>
          <div class="flex gap-8">
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
      </div>
    </div>
  </div>
</template>
