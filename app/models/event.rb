class Event < ApplicationRecord
    has_many :attendances 
    has_many :users, :through => :attendances

    validates :start_date, presence: true
    validates :duration, presence: true #bon trouver la méthode piour nombre multiple de 5
    validates :title, presence: true
    validates :description, presence: true, length: {minimum: 20, maximum: 1000}  
    validates :price, presence: true, numericality: {greater_than: 1, less_than: 1001}
    validates :location, presence: true 
end
