ExternalAPI
===========

make easier 'win32api'

install
==
  gem install external_api
  
sample
==
  require 'external_api'
  
  user32 = ExternalAPI.new("user32")

  user32.load("MessageBoxA", 'PPPI', 'I')
  user32.load("SetCursorPos", 'II', 'I')

  user32.MessageBoxA(0, "hello", "caption", 0)
  user32.SetCursorPos(100,100)

feedback
==
-pjc0247@naver.com
