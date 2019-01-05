
% this callback is called when the slider is
% moved, then released

function sliderCallback(self,src,event)

if isempty(self.callback_function)
	return
end

idx = find(self.handles.sliders == src);



% update the parameter values
self.parameter_values(idx) = src.Value;

% update the corresponding control label
this_string = self.handles.controllabel(idx).String;
this_string = this_string(1:strfind(this_string,'='));
this_string = [this_string oval(src.Value)];
self.handles.controllabel(idx).String = this_string;

self.callback_function(self.parameter_names(idx),self.parameter_values(idx))


