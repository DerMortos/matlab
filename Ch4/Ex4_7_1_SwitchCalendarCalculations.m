% Use the switch structure to compute the total elapsed days in a year, given the number
% (1–12) of the month, the day, and an indication of whether the year is a leap year

function total_days = Ex4_7_1_SwitchCalendarCalculations(month, day, extra_day)
total_days = day;
for i = 1:month - 1
    switch i
        case{1,3,5,7,8,10,12}
            total_days = total_days + 31;
        case{4,6,9,11}
            total_days = total_days + 30;
        case 2
            total_days = total_days + 28 + extra_day;
    end
end

% run from console
    % month = input('Enter month (1 - 12): ');
    % day = input('Enter day (1 - 31): ');
    % extra_day = input('Enter 1 for leap year; 0 otherwise: ');
    % total_days = Ex4_7_1_SwitchCalendarCalculations(month,day,extra_day)