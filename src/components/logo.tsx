export function Logo() {
    return (
      <div className="flex flex-col items-center">
        <svg width="100" height="60" viewBox="0 0 100 60" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M30 15C35 5 45 10 50 15C55 20 65 25 70 15" stroke="white" strokeWidth="4" strokeLinecap="round" />
          <path d="M20 25C25 15 35 20 40 25C45 30 55 35 60 25" stroke="white" strokeWidth="4" strokeLinecap="round" />
          <path d="M10 35C15 25 25 30 30 35C35 40 45 45 50 35" stroke="white" strokeWidth="4" strokeLinecap="round" />
        </svg>
        <h1 className="text-2xl font-bold text-white mt-2">WERA CAP</h1>
      </div>
    )
  }
  