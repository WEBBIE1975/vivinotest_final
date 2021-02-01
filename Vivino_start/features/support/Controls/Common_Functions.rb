
  module LocatorModule
  # The content of this file is NOT used in the project. This is ust to show that Common functions can be placed here and used across the the project.
  # In here the functions for swipe, scroll and other functionality should be placed.
    
  def selectTab(tab_name)
    selectByName(tab_name)
  end

  def selectPanel(panel_name)
    selectByName(panel_name)
  end

  def selectByName(name)
    waitElement{ byName(name).click }
  end

  def byName(name)
    text("#{name}")
  end

  def selectById(id)
    sleep 1
    waitElement {byId(id).click}
  end

  def byId(id)
    find_element(:id, "#{id}")
  end

  def byClass(classname)
    find_element(:class, "#{classname}")
  end

  def byXpath(xpath)
    find_element(:xpath, "#{xpath}")
  end

  def verifyTextNotExist(content)
    waitElement{ raise("Should not find text: #{content}") unless texts(content).empty? }
  end

  def verifyTextExist(content)
    #sleep 5
    waitElement{  raise("Not find text: #{content}") if  texts(content).empty? }
  end

  def getText(id)
    find_element(:id, "#{id}").text
  end

  def getTextClass(class_name)
    find_element(:id, "#{class_name}").text
  end

  def verifyButtonNotExist(button_name)
    raise("find button: #{button_name}") if exists { button(button_name) }
  end

  def verifyButtonExist(button_name)
    raise("Not find button: #{button_name}") unless exists { button(button_name) }
  end
  def verifyItemNotExistById(item_id)
    waitElement { raise("find button: #{item_id}") if exists { byId(item_id) } }
  end

  def verifyItemExistById(item_id)
    waitElement { raise("Not find item: #{item_id}") unless exists { byId(item_id) } }
  end

  def verifyItemExistByClass(item_class)
    waitElement { raise("Not find item: #{item_class}") unless exists { byClass(item_class) } }
  end

  def waitElement
    timeout = 60
    polling_interval = 0.2
    time_limit = Time.now + timeout
    loop do
      begin
        yield
      rescue Exception => error
      end
      return if error.nil?
      raise error if Time.now >= time_limit
      sleep polling_interval
    end
  end
end

module GestureModule
  def SwipeOnScreen(direction)
    screenWidth = self.tag("android.widget.LinearLayout").size.width
    screenHight = self.tag("android.widget.LinearLayout").size.height

    case direction.downcase
    when "down"
      swipeOpts = {
        :start_x => 0.5*screenWidth,
        :start_y => 0.6*screenHight,
        :end_x => 0.5*screenWidth,
        :end_y => 0.1*screenHight,
        :duration => 2000
      }
      self.swipe(swipeOpts)
    when "up"
      swipeOpts = {
        :start_x => 0.5*screenWidth,
        :start_y => 0.3*screenHight,
        :end_x => 0.5*screenWidth,
        :end_y => 0.8*screenHight,
        :duration => 2000
      }
      self.swipe(swipeOpts)
    when "right"
      swipeOpts = {
        :start_x => 0.1*screenWidth,
        :start_y => 0.5*screenHight,
        :end_x => 0.9*screenWidth,
        :end_y => 0.5*screenHight,
        :duration => 1000
      }
      self.swipe(swipeOpts)
    when "left"
      swipeOpts = {
        :start_x => 0.9*screenWidth,
        :start_y => 0.5*screenHight,
        :end_x => 0.1*screenWidth,
        :end_y => 0.5*screenHight,
        :duration => 1000
      }
      self.swipe(swipeOpts)
    else
      puts "Unknown scroll direction."
    end

    def longPress(element)
      longPressOpts = {
        :element => element,
        :x => 8,
        :y => 8,
        :duration => 2000
      }
      Appium::TouchAction.new.long_press(longPressOpts).perform
    end
  end




end



class CommonFunctions
  attr_accessor :SwipeOnScreen
  include LocatorModule
  include GestureModule
end
