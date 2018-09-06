class Source < ApplicationRecord
  belongs_to :medium, optional: true

  enum kind: %i[primary secondary tertiary]

  validate :at_least_one_field_present

  private

  def at_least_one_field_present
    [author, title, url].map(&:present?).any?
  end
end
