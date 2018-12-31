function [timeinmin, Dist_km] = light_time(Dist_mi)
%300,000 km/s
%in 1.609km = 1mile
Dist_km = 1.609 * Dist_mi
timeinsec = Dist_km/300000
timeinmin = timeinsec/60