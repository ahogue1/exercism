class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.max(3) {|a,b| a <=> b }
  end

  def subreport
    if latest != personal_best
        "#{personal_best - latest} short of "
    end
  end

  def report
    "Your latest score was #{latest}. That's #{subreport}your personal best!"
  end

end
