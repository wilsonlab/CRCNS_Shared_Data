data_path ='./long_track_10m_dataset'; 
load(data_path);
% show recorded positions
figure,
plot(behavior.linear_position);
title('Positions(cm)');
% show speed
figure,
plot(behavior.speed);
title('Speed(cm/s)');
% get tetrode ids
tt_ids = fieldnames(ephys);
% show amplitudes of channel 1 & 2 of the first tetrode
amp = eval(['ephys.' tt_ids{1} '.spike_amplitudes']);
figure,
plot(amp(:,1),amp(:,2),'.');
title(['Amplitude of spikes from ' tt_ids{1} '(uV)']);
ylabel('Channel1');
xlabel('Channel2');