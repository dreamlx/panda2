ActiveAdmin.register User do

  permit_params :name, :email, :charge_rate, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :charge_rate
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :name
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :name
      f.input :charge_rate
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
