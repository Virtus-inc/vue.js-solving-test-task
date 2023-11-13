<template>
  <div :class='data.status ? "dark" : "bg-white"' class="dark flex justify-center items-center h-screen">
    <Dropdown />
    <UToggle v-model="data.status" color="green" @click="toggleTheme" class="ml-2"/>
  </div>
</template>

<script setup>
  import Dropdown from "~/components/iu/Dropdown.vue"

  const data = ref({
    status: false,
  });

  const toggleTheme = () => {
    data.value.status = !data.value.status;
  };
</script>
