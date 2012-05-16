class ColorViewController < UIViewController

  def loadView
    self.view = UIImageView.alloc.init
  end
  
  def randomColor
    ['darkGrayColor', 'lightGrayColor', 'whiteColor', 'grayColor', 'redColor', 'greenColor', 'blueColor', 'cyanColor', 'yellowColor', 'magentaColor', 'orangeColor', 'purpleColor', 'brownColor'].sample
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
    view.backgroundColor = UIColor.send(color)
    @label.backgroundColor = UIColor.clearColor
    @label.text = color.gsub('Color', '').upcase
    @label.font = UIFont.boldSystemFontOfSize(50)
    @label.textColor = UIColor.blackColor
    @label.textAlignment = UITextAlignmentCenter
  end
    
end