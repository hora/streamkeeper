module.exports = {
  content: [
    './_includes/**/*.md',
    './_layouts/**/*.html',
    './*.html',
    './*.md',
  ],
  theme: {
    extend: {},
      fontFamily: {
        'sans': ['"Raleway"', '"Helvetica Neue"', 'Arial', 'sans-serif'],
        'serif': ['"Goudy Bookletter 1911"', '"Times New Roman"', 'serif'],
      },
      colors: {
        'lapis-lazuli': '#335b8e',
        'cambridge-blue': '#6ca18f',
        'light-blue': '#b7dbdb',
        'maize': '#ffea59',
        'sage': '#b5b867',
        'eerie-black': '#1f1f1f',
        'jet': '#333333',
        'whitesmoke': '#f5f5f5',
      },
  },
  variants: {},
}
