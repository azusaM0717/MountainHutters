#管理者初期データ
admin_email = "admin@admin"
admin_password = "password"

Admin.find_or_create_by!(email: admin_email) do |admin|
  admin.password = admin_password
  admin.password_confirmation = admin_password
end
