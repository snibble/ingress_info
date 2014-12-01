class IngressCycles
  def self.checkpointsForDate(start_time, ref_date)
    hours_since_start = (Time.new(ref_date.year, ref_date.month, ref_date.day, 0, 0) - start_time)/3600
    checkpointTime = Time.new(ref_date.year, ref_date.month, ref_date.day, 5 - (hours_since_start % 5), 0)
    
    checkPoints = [checkpointTime.strftime("%H:%M")]
    
    while checkpointTime.hour < 19 do
      checkpointTime += 5*60*60
      checkPoints += [checkpointTime.strftime("%H:%M")]
    end

    checkPoints += ["24:00"] if checkpointTime.hour == 19

    checkPoints
  end

  def self.cycleEndTime(start_time)
    start_time + 35*5*60*60
  end
end
