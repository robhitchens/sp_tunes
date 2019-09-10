#intro
2.times do
  sample :drum_bass_hard, rate: 1, amp: 1
  sleep 0.125
end
6.times do
  sample :drum_bass_hard, rate: 1, amp: 1
  sleep 0.0625
end
4.times do
  sample :drum_bass_hard, rate: 1, amp: 1
  sleep 0.5
end
sample :drum_bass_hard, rate: 1, amp: 1
sample :drum_snare_hard, rate: 1, amp: 2
sleep 0.5

3.times do
  with_fx :reverb, mix: 1, amp: 2.5 do
    sample :drum_snare_hard, rate: 1, amp: 2
    sample :drum_bass_hard, rate: 1, amp: 1
    sample :bd_boom, rate: 0.5, amp: 5
  end
  sleep 0.05
end
#loops
live_loop :syn do
  with_fx :reverb, mix: 1 do
    with_fx :krush, mix: 1, gain: 1 do
      with_fx :distortion, mix: 1, distort: 0.75 do
        with_synth :dark_ambience do
          play :b4, amp: 10, attack: 6
          sleep 5
          3.times do
            play_pattern [:a4, :e4, :d4, :c4, :b4], amp: 10, attack: 0.25
          end
          sleep 1
          play_chord [:c4, :a4, :b4], amp: 10
          sleep 2
        end
      end
    end
  end
end
sleep 23
#comment do
live_loop :hh_hats do
  6.times do
    sample :drum_cymbal_closed, rate: 1, amp: 1
    sleep 0.0625
  end
  10.times do
    sample :drum_cymbal_closed, rate: 1, amp: 1
    sleep 0.125
  end
end
live_loop :beat do
  3.times do
    with_fx :bitcrusher, bits: 6, mix: 1 do
      sample :bd_haus, rate: 1
    end
    with_fx :hpf, mix: 1, amp: 1, cutoff: 85 do
      sample :drum_cymbal_open, rate: 1, amp: 0.35
    end
    with_fx :reverb, room: 1 do
      sample :bd_boom, amp: 1, rate: 1
    end
    sleep 0.125
  end
  2.times do
    with_fx :bitcrusher, bits: 6, mix: 1 do
      sample :bd_haus, rate: 1
    end
    with_fx :hpf, mix: 1, amp: 1, cutoff: 85 do
      sample :drum_cymbal_open, rate: 1, amp: 0.35
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
    with_fx :reverb, mix: 1 do
      sample :sn_generic, rate: 1, amp: 0.5
      sample :elec_snare, rate: 1, amp: 1
    end
  end
  with_fx :reverb, mix: 0.5, amp: 2 do
    with_fx :bitcrusher, mix: 1, bits: 7 do
      sample :drum_snare_hard, rate: 1, amp: 1
    end
  end
end
live_loop :creash do
  sleep 23
  with_fx :reverb, mix: 1, amp: 1.75 do
    sample :drum_splash_hard, rate: 0.75, amp: 1
  end
end
#end