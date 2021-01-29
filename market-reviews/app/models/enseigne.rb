class Enseigne < ApplicationRecord
    has_many :avis

    before_create :slugify
    
    def slugify
        self.label = name.parameterize
    end

    def avg_score
        return 0 unless avis.size.positive?
        
        avis.average(:score).to_f.round(2)
    end
end
