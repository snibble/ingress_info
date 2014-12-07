class IngressCycles
  def self.checkpoints_for_date(start_time, ref_date)
    checkpoint_time = calculate_first_checkpoint_time(start_time, ref_date)
    
    checkpoints = [checkpoint_time]
    
    while checkpoint_time.hour < 19 do
      checkpoint_time += 5*60*60
      checkpoints << checkpoint_time
    end

    checkpoints << Time.new(ref_date.year, ref_date.month, ref_date.day, 24, 00) if checkpoint_time.hour == 19
    checkpoints.unshift(Time.new(ref_date.year, ref_date.month, ref_date.day, 00, 00)) if checkpoint_time.hour == 20

    checkpoints
  end

  def self.cycle_end_time(start_time)
    start_time + 35*5*60*60
  end

  def self.calculate_hours_since_cycle_start(start_time, ref_date)
    (Time.new(ref_date.year, ref_date.month, ref_date.day, 0, 0) - start_time)/3600
  end

  def self.calculate_first_checkpoint_time(start_time, ref_date)
    Time.new(ref_date.year, ref_date.month, ref_date.day, 5 - (calculate_hours_since_cycle_start(start_time, ref_date) % 5), 0)
  end
end
