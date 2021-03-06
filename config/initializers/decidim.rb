# -*- coding: utf-8 -*-
# frozen_string_literal: true

Decidim.configure do |config|
  config.application_name = "Participa a Terrassa"
  config.mailer_sender    = "Participa a Terrassa <no-respondre@participa.terrassa.cat>"
  config.maximum_attachment_size = 50.megabytes

  # Uncomment this lines to set your preferred locales
  config.available_locales = %w{ca es}
  config.default_locale = :ca

  # Geocoder configuration
  config.geocoder = {
    static_map_url: "https://image.maps.cit.api.here.com/mia/1.6/mapview",
    here_app_id: Rails.application.secrets.geocoder[:here_app_id],
    here_app_code: Rails.application.secrets.geocoder[:here_app_code]
  }

  # Custom calculate reference method
  config.resource_reference_generator = lambda do |resource, feature|
    class_identifier = resource.class.name.demodulize[0..3].upcase
    "#{class_identifier}-#{resource.id}"
  end

  # Currency unit
  config.currency_unit = "€"

  # The number of reports which an object can receive before hiding it
  # config.max_reports_before_hiding = 3

  if ENV["HEROKU_APP_NAME"].present?
    config.base_uploads_path = ENV["HEROKU_APP_NAME"] + "/"
  end
end

Decidim::Verifications.register_workflow(:census_authorization_handler) do |auth|
  auth.form = "CensusAuthorizationHandler"
  auth.options do |options|
    options.attribute :district, type: :string, required: false
  end
end

Decidim.menu :menu do |menu|
  menu.item I18n.t("menu.normativa"),
    "/processes_groups/6",
    position: 3,
    active: :inclusive,
    if: Decidim::ParticipatoryProcess.where(decidim_participatory_process_group_id: 6).published.public_spaces.any?
end
