import React from "react"
import ReactDOM from "react-dom/client"
import { ThemeProvider } from "./components/theme-provider"
import App from "./VideoPlayer"
import "./index.css"

ReactDOM.createRoot(document.getElementById("root")!).render(
  <React.StrictMode>
    <ThemeProvider defaultTheme="dark" storageKey="video-player-theme">
      <App />
    </ThemeProvider>
  </React.StrictMode>,
)
