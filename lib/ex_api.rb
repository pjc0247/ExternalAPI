require 'win32api'

class ExternalAPI
	def initialize(dll_path)
		@dll_path = dll_path
		@proc = Hash.new
	end

	def load(name, param, ret)
		@proc[name] = Win32API.new(@dll_path, name, param, ret)
		self.class.send(:define_method, name) do |*args|			
			@proc[name].call *args
		end
	end
end