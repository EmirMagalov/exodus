<template>
  <div class="hero">
    <canvas ref="canvas" class="particles"></canvas>
    <slot />  <!-- сюда будет контент -->
  </div>
</template>

<script setup>
import { onMounted, ref, onBeforeUnmount } from 'vue';

const canvas = ref(null);
let ctx, animationFrameId;

onMounted(() => {
  const c = canvas.value;
  ctx = c.getContext('2d');
  c.width = window.innerWidth;
  c.height = window.innerHeight;

  const particles = [];
  const count = 50;

  for (let i = 0; i < count; i++) {
    particles.push({
      x: Math.random() * c.width,
      y: Math.random() * c.height,
      size: Math.random() * 1.5,
      speed: Math.random() * 1 + 0.5,
      drift: Math.random() * 2 - 1
    });
  }

  function animate() {
    ctx.clearRect(0, 0, c.width, c.height);
    particles.forEach(p => {
      p.y += p.speed;
      p.x += p.drift;
      if (p.y > c.height) {
        p.y = 0;
        p.x = Math.random() * c.width;
      }
      ctx.beginPath();
      ctx.arc(p.x, p.y, p.size, 0, Math.PI * 2);
      ctx.fillStyle = 'rgba(255,255,255,0.7)';
      ctx.fill();
    });
    animationFrameId = requestAnimationFrame(animate);
  }

  animate();

  window.addEventListener('resize', () => {
    c.width = window.innerWidth;
    c.height = window.innerHeight;
  });
});

onBeforeUnmount(() => {
  cancelAnimationFrame(animationFrameId);
});
</script>

<style scoped>
.particles {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 50%;
  pointer-events: none;
}
</style>
