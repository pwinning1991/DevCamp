class PagesController < ApplicationController
  def home
    @posts = Blog.all
<<<<<<< HEAD
    @skills = Skill.all
=======
>>>>>>> 0f835711b582194d5cc00c625ca471e698ec058a
  end

  def about
  end

  def contact
  end
end
