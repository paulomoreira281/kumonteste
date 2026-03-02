/** @type {import('tailwindcss').Config} */
export default {
  content: ['./index.html', './src/**/*.{js,ts,jsx,tsx}'],
  theme: {
    extend: {
      colors: {
        verde:    { DEFAULT: '#2D7A4F', light: '#E8F5EE', dark: '#1A5C38' },
        amarelo:  { DEFAULT: '#F5A623', light: '#FEF3DC', dark: '#C47E0A' },
        azul:     { DEFAULT: '#1E6FA8', light: '#E3F0FA', dark: '#14507C' },
        rosa:     { DEFAULT: '#D94F8A', light: '#FAEAF3', dark: '#A83368' },
      },
      fontFamily: {
        sans: ['Nunito', 'system-ui', 'sans-serif'],
        display: ['Fredoka One', 'system-ui', 'sans-serif'],
      },
    },
  },
  plugins: [],
}
