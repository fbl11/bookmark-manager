class Bookmark

  def initialize
    @list = { google: 'google.co.uk' }
  end

  def all
    @list.map { |name, url| "#{name.to_s.capitalize}: #{url}" }
  end

end