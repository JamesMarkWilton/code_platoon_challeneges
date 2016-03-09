# Here's some stuff from when we talked about modules:
#   https://vimeo.com/157849877
#   https://github.com/CodePlatoon/curriculum/blob/c459e95c816da69ea2a9807c0fdd57ab18262830/phase1/iterable_project.md

module MahMixin
  module Equality

    def <(right)
      result = (self <=> right)
      unless result.class == Fixnum
        raise ArgumentError.new("comparison of #{self.class} with #{right.class} failed")
      end
      result < 0
    end

    def <=(right)
      result = (self <=> right)
      unless result.class == Fixnum
        raise ArgumentError.new("comparison of #{self.class} with #{right.class} failed")
      end
      result <= 0
    end

    def >(right)
      result = (self <=> right)
      unless result.class == Fixnum
        raise ArgumentError.new("comparison of #{self.class} with #{right.class} failed")
      end
      result > 0
    end


    def >=(right)
      result = (self <=> right)
      unless result.class == Fixnum
        raise ArgumentError.new("comparison of #{self.class} with #{right.class} failed")
      end
      result >= 0
    end

    def ==(right)
      result = (self <=> right)
      result == 0
    end

    def between?(first, second)
      return false if (self < first || self > second)
      return true if (self >= first && self <= second)
    end
  end
end


class MahMixin::User
  attr_reader :name, :age
  include MahMixin::Equality

  def initialize(name, age)
    @name = name
    @age = age
  end

  def <=>(other_user)
  end

  def <(other_user)
    unless  self.class == other_user.class
      raise ArgumentError.new("comparison of #{self.class} with #{other_user.class} failed")
    end
    result = (self.age <=> other_user.age)
    result < 0
  end

  def <=(other_user)
    unless  self.class == other_user.class
      raise ArgumentError.new("comparison of #{self.class} with #{other_user.class} failed")
    end
    result = (self.age <=> other_user.age)
    result <= 0
  end

  def >(other_user)
    unless  self.class == other_user.class
      raise ArgumentError.new("comparison of #{self.class} with #{other_user.class} failed")
    end
    result = (self.age <=> other_user.age)
    result > 0
  end

  def >=(other_user)
    unless  self.class == other_user.class
      raise ArgumentError.new("comparison of #{self.class} with #{other_user.class} failed")
    end
    result = (self.age <=> other_user.age)
    result >= 0
  end

  def ==(other_user)
    return nil unless self.class == other_user.class
    result = (self.age <=> other_user.age)
    final_result = result == 0

    unless final_result
      require "pry"
      binding.pry
      final_result = self.name <=> other_user.name
    end

    final_result < 0
  end
end
