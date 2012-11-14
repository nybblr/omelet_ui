module OmeletUi
	class	DynamicBinding
		def initialize(varhash); @vars=varhash; end
		def method_missing(methname, *args)
			meth_s = methname.to_s
			if meth_s =~ /=\z/
				@vars[meth_s.sub(/=\z/, '').to_sym] = args.first
			else
				@vars[methname]
			end
		end
		def execute(&block)
			instance_eval &block
		end
	end
end
