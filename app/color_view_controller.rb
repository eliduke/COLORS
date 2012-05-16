class ColorViewController < UIViewController

  def loadView
    self.view = UIImageView.alloc.init
  end
  
  def randomColor
    ['redColor', 'pinkColor', 'blueColor', 'yellowColor', 'purpleColor', 'greenColor', 'orangeColor', 'fuchsiaColor', 'brownColor', 'grayColor'].shuffle.first
  end
  
  def viewDidLoad
    @label = UILabel.alloc.initWithFrame([[10,40], [300,80]])
    setColor
    view.addSubview(@label)
    view.addGestureRecognizer(UITapGestureRecognizer.alloc.initWithTarget(self, action:'setColor'))
    view.userInteractionEnabled = true
  end
  
  def setColor
    color = randomColor
    colorText = color == 'yellowColor' ? 'blackColor' : 'whiteColor'
    view.backgroundColor = UIColor.send(color)
    @label.backgroundColor = UIColor.clearColor
    @label.text = color.gsub('Color', '').upcase
    @label.font = UIFont.boldSystemFontOfSize(50)
    @label.textColor = UIColor.send(colorText)
    @label.textAlignment = UITextAlignmentCenter
  end
      
end