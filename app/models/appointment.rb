class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  # https://stackoverflow.com/questions/7202319/rails-force-empty-string-to-null-in-the-database
  # Force empty string values into null
  # before_save :normalize_blank_values

  # def normalize_blank_values
  #   attributes.each do |column, value|
  #     self[column].present? || self[column] = nil
  #   end
  # end

  module NormalizeBlankValues
    extend ActiveSupport::Concern

    def normalize_blank_values
      attributes.each do |column, value|
        self[column].present? || self[column] = nil
      end
    end

    module ClassMethods
      def normalize_blank_values
        before_save :normalize_blank_values
      end
    end
  end

  ActiveRecord::Base.send(:include, NormalizeBlankValues)
  normalize_blank_values
end
