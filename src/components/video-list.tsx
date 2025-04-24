"use client"

interface Video {
  id: number
  nombre: string
  checked?: boolean
}

interface VideoListProps {
  videos: Video[]
}

export function VideoList({ videos }: VideoListProps) {
  return (
    <div className="space-y-3">
      <h2 className="text-xl font-bold text-white mb-4">Temas:</h2>
      {videos.map((video) => (
        <div
          key={video.id}
          className="bg-[#001f35] border border-[#0a2a40] rounded-lg p-4 flex items-center justify-between hover:border-[#4a9bd1] transition-colors cursor-pointer"
        >
          <div className="flex-1">
            <h3 className="text-white">{video.nombre}</h3>
          </div>
          <div className="flex items-center">
            <input
              type="checkbox"
              checked={video.checked || false}
              onChange={() => {}}
              className="h-4 w-4 accent-[#4a9bd1]"
            />
          </div>
        </div>
      ))}
    </div>
  )
}
