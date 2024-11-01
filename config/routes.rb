Rails.application.routes.draw do
  root "dice#index"

  get("/dice/2/6", { :controller => "dice", :action => "roll_2d6" })
  get("/dice/2/10", { :controller => "dice", :action => "roll_2d10" })
  get("/dice/1/20", { :controller => "dice", :action => "roll_1d20" })
  get("/dice/5/4", { :controller => "dice", :action => "roll_5d4" })

  # 动态路径支持
  get("/dice/:num_dice/:num_sides", { :controller => "dice", :action => "roll_dice" })

end
