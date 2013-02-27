module ApplicationHelper

  def show_link(object)
    link_to object do
      content = content_tag(:i, "", :class => "icon-info-sign")
      content += " "
      content += t("action.show", :default => "Show")
      content.html_safe
    end
  end

  def show_button(object)
    link_to object, :class => "btn btn-primary" do
      content = content_tag(:i, "", :class => "icon-info-sign icon-white")
      content += " "
      content += t("action.show", :default => "Show")
      content.html_safe
    end
  end

  def edit_link(object)
    link_to [:edit, object] do
      content = content_tag(:i, "", :class => "icon-pencil")
      content += " "
      content += t("action.edit", :default => "Edit")
      content.html_safe
    end
  end

  def edit_button(object)
    link_to [:edit, object], :class => "btn btn-warning" do
      content = content_tag(:i, "", :class => "icon-pencil icon-white")
      content += " "
      content += t("action.edit", :default => "Edit")
      content.html_safe
    end
  end

  def destroy_link(object)
    link_to object, :method => :delete, :confirm => "Are you sure?" do
      content = content_tag(:i, "", :class => "icon-remove")
      content += " "
      content += t("action.delete", :default => "Delete")
      content.html_safe
    end
  end

  def destroy_button(object)
    link_to object, :method => :delete, :confirm => "Are you sure?", :class => "btn btn-danger" do
      content = content_tag(:i, "", :class => "icon-remove icon-white")
      content += " "
      content += t("action.delete", :default => "Delete")
      content.html_safe
    end
  end

  def boolean_image(arg)
    if arg == true
      content_tag(:i, "", :class => "icon-ok")
    else
      content_tag(:i, "", :class => "icon-remove")
    end
  end

  def monthname(monthnumber)
    if monthnumber
      Date::MONTHNAMES[monthnumber]
    end
  end



 def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end




def link_to_remove_fields(name, f)
     f.hidden_field(:_destroy) + link_to(name, :onClick => "remove_fields(this)")
  end

  def link_to_add_fields(name, f, association, partial = form_partial, locals = {})
     new_object = association.to_s.classify.constantize.new
     #partial ||= f.object.class.to_s.tableize+"/"+association.to_s.singularize + "_fields"
     fields = f.fields_for(association, new_object, :child_index => "new_{association}") do |builder|
       locals[:f] = builder
          render(:partial => partial, :locals => locals)
     end
     link_to_function name, "add_fields(this, \"{association}\", \"#{escape_javascript(fields)}\")"
   end















end
