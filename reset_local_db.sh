rails runner "Decidim::Organization.first.update(host: 'localhost'); admin = Decidim::User.where(admin: true).first; admin.update(email: 'admin@example.org', password: 'decidim123456', password_confirmation: 'decidim123456'); admin.confirm;"