class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        auditions.map {|actor| actor.actor}
    end

    def locations
        auditions.map {|location| location.location}
    end
    def lead
        auditions.where(hired:true).first
    end
    def understudy
        auditions.where(hired:true).second
    end
end