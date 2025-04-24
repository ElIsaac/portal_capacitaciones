import { VideoPlayer } from "./components/video-player"
import { Logo } from "./components/logo"
import { VideoList } from "./components/video-list"
import { videosData } from "./data/videos"

function App() {
  return (
    <div className=" text-white flex flex-col">
      <div className="container mx-auto py-8 px-2 flex-1 flex flex-col lg:flex-row gap-6">
        <div className="lg:w-3/3">
          <div className="mb-6 flex justify-center">
           
          </div>
          <VideoPlayer
            src="https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4"
            title="Curso de creación de grupos de contacto"
            description="Aprenda a crear y gestionar grupos de contactos en el correo electrónico."
          />
        </div>
        <div className="lg:w-1/3">
          <VideoList videos={videosData} />
        </div>
      </div>
     
    </div>
  )
}

export default App
