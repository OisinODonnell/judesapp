class SitemapController < ApplicationController
  layout nil

  def index
    @paths = Array.new
    @paths.push (["users   -> Display"         ,"Display"            ,"Display Application Management Users"])
    @paths.push (["users   -> New"    ,"users/new"        ,"Add New Management User"])
    @paths.push (["users   -> Edit"   ,"users/1/edit"     ,"Edit a Management User"])
    @paths.push (["players -> Display-All"      ,"players"          ,"Display All Players"])
    @paths.push (["players -> New"  ,"players/new"      ,"Add New PLayer"])
    @paths.push (["players -> Display-One" ,"players/1"        ,"Display Single player details"])
    @paths.push (["players -> Edit" ,"players/1/edit"   ,"Display Single player details"])
    @paths.push (["training_events -> Display-All","training_events","Display All Training Events"])
    @paths.push (["training_events -> New","training_events/new"    ,"Add New Training Event"])
    @paths.push (["training_events -> Display-One","training_events/1"     ,"Show Single Training Event"])
    @paths.push (["training_events -> Edit","training_events/1/edit","Edit a Training Event"])
    @paths.push (["attends -> Display-All"      ,"attends"           ,"Display All Attendance Records"])
    @paths.push (["attends -> Display-One" ,"attends/1"         ,"Display a Single Attendance Record"])
    @paths.push (["attends -> New"  ,"attends/new"       ,"Add New Attendance record"])
    @paths.push (["attends -> Edit"  ,"attends/1/edit"   ,"Add New Attendance record"])
    @paths.push (["Login"             ,"login"            ,"Login"])
    @paths.push (["Logout"            ,"logout"           ,"Logout"])

    respond_to do |format|
      format.html
      format.json
    end
  end
end
