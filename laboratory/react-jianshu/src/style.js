import React, { Fragment } from 'react'
import { createGlobalStyle } from 'styled-components'

import IconFont from './assets/iconfont/iconfont'

const CommonStyle = createGlobalStyle`
  * {
    box-sizing: border-box;
  }

  body {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", "Roboto", "Oxygen",
      "Ubuntu", "Cantarell", "Fira Sans", "Droid Sans", "Helvetica Neue",
      sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
  }

  code {
    font-family: source-code-pro, Menlo, Monaco, Consolas, "Courier New",
      monospace;
  }
`

export default function GlobalStyle() {
  return (
    <Fragment>
      <CommonStyle />
      <IconFont />
    </Fragment>
  )
}
