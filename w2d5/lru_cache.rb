
class LRUCache

  attr_reader :max_size, :cache


  def initialize(max_size)
    @max_size = max_size
    @cache = []
  end

  def count
    @cache.length
             ## returns number of elements currently in cache returns number of elements currently i
  end

  def add(el)
    if count == @max_size
      if @cache.include?(el)
        @cache.delete(el)
        @cache.push(el)
      else
        @cache.shift
        @cache.push(el)
      end
    else
      cache.push(el)
    end
      # adds element to cache according to LRU principle
  end

  def show
    @cache
      # shows the items in the cache, with the LRU item first
  end

  private
    # helper methods go here!

end
