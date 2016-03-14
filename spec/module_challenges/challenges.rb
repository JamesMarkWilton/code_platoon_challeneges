require 'spec_helper'
require 'module_challenges'

module MahMod
  def self.find_c(mod)
    mod::C
  end

  module String
  end

  Dir = "These aren't the Dirs you're looking for"

  def self.mah_dir
    Dir
  end

  def self.top_dir
    ::Dir
  end

  def self.make_mod(mod_name)

  end

  module A
    C = 1
  end

  module B
    C = 2
  end
end
