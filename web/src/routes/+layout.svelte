<script lang="ts">
  import favicon from '$lib/assets/favicon.svg';

  let { children } = $props();

  import '../app.css';
</script>

<svelte:head>
  <link rel="icon" href={favicon} />
</svelte:head>

{@render children?.()}

<hr class="my-2" />
<footer class="my-2">
  <p class="text-center text-sm italic text-gray-500 px-6 m-auto w-full">
    This site is run by <a href="https://rapidcow.github.io/site-wisc-sdc-fa25-team/"
      >SDC Fall 2025 Team 17</a
    >. Read our source code on GitHub
    <s><a class="text-inherit no-underline cursor-default pointer-events-none" href="https://github.com/SDC-Fall-2025/Team-17">here</a></s>
    <a href="https://github.com/eyzmeng/code-wisc-sdc-fa25-team">here</a>.
  </p>
</footer>
