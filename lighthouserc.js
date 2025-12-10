module.exports = {
  ci: {
    collect: {
      numberOfRuns: 1,
      staticDistDir: './dist',
      url: [
        'http://localhost:3000/',
        'http://localhost:3000/blog/my-third-blog-post',
        'http://localhost:3000/blog/tag/web_development'
      ]
    },
    assert: {
      preset: 'lighthouse:no-pwa',
      assertions: {
        'offscreen-images': 'off',
        'uses-webp-images': 'off',
        'uses-http2': 'off'
      }
    },
    upload: {
      target: 'temporary-public-storage'
    }
  }
}
