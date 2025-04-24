"use client"

import { useState } from "react"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Checkbox } from "@/components/ui/checkbox"
import { Eye, EyeOff, Mail, Lock } from "lucide-react"
import logo from "@/assets/logo.png";

<img src={logo} alt="Logo" />


export default function LoginPage() {
  const [showPassword, setShowPassword] = useState(false)

  return (
    
      <div className="w-full max-w-md rounded-lg bg-gradient-to-br from-[#0C3651] to-black p-15 shadow-xl">
        <div className="mb-8 flex flex-col items-center justify-center">
          <div className="mb-4 h-16 w-16">
            <img src="/logo.png" alt="" />
          </div>
          <h1 className="text-center text-3xl tracking-wider text-white">WERACAP</h1>
          
        </div>

        <div className="space-y-6">
          <div className="space-y-2">
            <label htmlFor="email" className="block text-sm font-medium text-gray-200">
              Email
            </label>
            <div className="relative">
              <div className="pointer-events-none absolute inset-y-0 left-0 flex items-center pl-3">
                <Mail className="h-5 w-5 text-gray-400" />
              </div>
              <Input
                id="email"
                type="email"
                placeholder="name@example.com"
                className="pl-10 bg-white/10 border-gray-600 text-white placeholder:text-gray-400 focus:border-cyan-400 focus:ring-cyan-400"
              />
            </div>
          </div>

          <div className="space-y-2">
            <label htmlFor="password" className="block text-sm font-medium text-gray-200">
              Password
            </label>
            <div className="relative">
              <div className="pointer-events-none absolute inset-y-0 left-0 flex items-center pl-3">
                <Lock className="h-5 w-5 text-gray-400" />
              </div>
              <Input
                id="password"
                type={showPassword ? "text" : "password"}
                placeholder="••••••"
                className="pl-10 pr-10 bg-white/10 border-gray-600 text-white placeholder:text-gray-400 focus:border-cyan-400 focus:ring-cyan-400"
              />
              <button
                type="button"
                onClick={() => setShowPassword(!showPassword)}
                className="absolute inset-y-0 right-0 flex items-center pr-3"
              >
                {showPassword ? (
                  <EyeOff className="h-5 w-5 text-gray-400" />
                ) : (
                  <Eye className="h-5 w-5 text-gray-400" />
                )}
              </button>
            </div>
          </div>

          <div className="flex items-center justify-between">
            <div className="flex items-center space-x-2">
              <Checkbox id="remember" className="border-gray-500 data-[state=checked]:bg-cyan-500" />
              <label htmlFor="remember" className="text-sm text-gray-300">
                Remember me
              </label>
            </div>
            <a href="#" className="text-sm text-cyan-400 hover:text-cyan-300">
              Forgot password?
            </a>
          </div>

          <Button className="w-full bg-cyan-600 hover:bg-cyan-700 text-white">Sign in</Button>

          <div className="relative my-4">
            <div className="absolute inset-0 flex items-center">
              <div className="w-full border-t border-gray-600"></div>
            </div>
            <div className="relative flex justify-center text-sm">
              <span className="bg-[#0C3651] px-2 text-gray-400">Or continue with</span>
            </div>
          </div>

          

          <p className="mt-6 text-center text-sm text-gray-400">
            Don't have an account?{" "}
            <a href="#" className="font-medium text-cyan-400 hover:text-cyan-300">
              Sign up
            </a>
          </p>
        </div>
      </div>
    
  )
}
