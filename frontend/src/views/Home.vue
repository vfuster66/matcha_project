<template>
    <div>
      <h1>Welcome to the Home Page</h1>
      <p>{{ message }}</p>
    </div>
  </template>
  
  <script setup lang="ts">
  import { ref, onMounted } from 'vue';
  
  const message = ref('');
  
  onMounted(async () => {
    const response = await fetch(`${import.meta.env.VITE_BACKEND_URL}/health`);
    const data = await response.json();
    message.value = data.message;
  });
  </script>
  