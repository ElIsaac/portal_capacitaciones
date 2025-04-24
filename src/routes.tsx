// src/routes.jsx
import { createBrowserRouter } from "react-router-dom";

import { VideoPlayer } from "./components/video-player";

export const router = createBrowserRouter([
  {
    path: "/",
    element: <VideoPlayer
    src="https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4"
            title="Curso de creación de grupos de contacto"
            description="Aprenda a crear y gestionar grupos de contactos en el correo electrónico."
    />,
  }
 
]);
