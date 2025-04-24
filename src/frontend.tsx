import React from "react"
import ReactDOM from "react-dom/client"
import { ThemeProvider } from "./components/theme-provider"
import App from "./VideoPlayer"
import "./index.css"
import LoginPage from "./login"

ReactDOM.createRoot(document.getElementById("root")!).render(
  <React.StrictMode>
    <ThemeProvider defaultTheme="dark" storageKey="video-player-theme">
      <LoginPage />
    </ThemeProvider>
  </React.StrictMode>,
)
