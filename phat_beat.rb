#Phat beat
#comment do
3.times do
  with_fx :reverb, mix: 1, amp: 2.5 do
    sample :drum_snare_hard, rate: 1, amp: 2
    sample :drum_bass_hard, rate: 1, amp: 1
    sample :bd_boom, rate: 0.5, amp: 5
  end
  sleep 0.05
end
live_loop :hh_hats do
  with_fx :bitcrusher, mix: 1, amp: 1, bits: 6 do
    6.times do
      sample :drum_cymbal_closed, rate: 1, amp: 1, attack_level: 4
      sleep 0.0625
    end
    10.times do
      sample :drum_cymbal_closed, rate: 1, amp: 1, attack_level: 2
      sleep 0.125
    end
  end
end
live_loop :beat do
  3.times do
    with_fx :bitcrusher, bits: 6, mix: 1 do
      sample :bd_haus, rate: 1, attack_level: 5
    end
    comment do
      with_fx :hpf, mix: 1, amp: 1, cutoff: 85 do
        sample :drum_cymbal_open, rate: 1, amp: 0.35
      end
    end
    with_fx :reverb, room: 1 do
      sample :bd_boom, amp: 1, rate: 1
    end
    sleep 0.125
  end
  2.times do
    with_fx :bitcrusher, bits: 6, mix: 1 do
      sample :bd_haus, rate: 1, attack_level: 5
    end
    comment do
      with_fx :hpf, mix: 1, amp: 1, cutoff: 85 do
        sample :drum_cymbal_open, rate: 1, amp: 0.35
      end
    end
    
    with_fx :reverb, room: 1 do
      sample :bd_boom, amp: 1, rate: 1
    end
    sleep 0.5
  end
end
live_loop :snare do
  sleep 1
  with_fx :compressor, mix: 1 do
    with_fx :reverb, mix: 1, amp: 2 do
      sample :sn_generic, rate: 1, amp: 0.5
      sample :elec_snare, rate: 1, amp: 1
    end
  end
  with_fx :reverb, mix: 0.5, amp: 2 do
    with_fx :bitcrusher, mix: 1, bits: 7 do
      sample :drum_snare_hard, rate: 1, amp: 0.5
    end
  end
end
live_loop :creash do
  sleep 23
  with_fx :reverb, mix: 1, amp: 1.75 do
    sample :drum_splash_hard, rate: 0.75, amp: 1
  end
end
live_loop :boom_boom do
  sleep 21
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 6, rate: 1
  end
end
#end
