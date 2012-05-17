class UIColor
  
  def self.pinkColor
    @pink_color ||= self.colorWithRed(0.98, green:0.68, blue:0.82, alpha:1)
  end
  
  def self.fuchsiaColor
    @fuchsia_color ||= self.colorWithRed(1, green:0, blue:1, alpha:1)
  end
  
  def self.greenColor
    @green_color ||= self.colorWithRed(0.2, green:0.8, blue:0.2, alpha:1)
  end
  
  def self.brownColor
    @brown_color ||= self.colorWithRed(0.58, green:0.29, blue:0, alpha:1)
  end
  
  def self.blueColor
    @blue_color ||= self.colorWithRed(0, green:0.44, blue:1, alpha:1)
  end
  
  def self.tealColor
    @teal_color ||= self.colorWithRed(0, green:0.5, blue:0.5, alpha:1)
  end
  
end