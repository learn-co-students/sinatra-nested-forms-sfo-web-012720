class Pirate
    attr_accessor :name, :height, :weight

    @@PIRATES = []

    def initialize(args)
        @name = args[:name]
        @height = args[:height]
        @weight = args[:weight]
        @@PIRATES << self
    end

    def self.all
        @@PIRATES
    end
end