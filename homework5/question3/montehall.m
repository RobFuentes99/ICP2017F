rng('shuffle');
nSample = 1000;
winCounterStay= 0;
winCounterSwitch = 0;
oddsOfWinStay = zeros(nSample);
oddsOfWinSwitch = zeros(nSample);
doors = [1, 2, 3];
for index = 1:nSample
    doorCar = randi(3);
    contestantDoor = randi(3);
    hostDoor = doors(doors ~= doorCar);
    hostDoor = hostDoor(hostDoor ~= contestantDoor);
    hostDoor = hostDoor(randi(length(hostDoor)));
    if doorCar == contestantDoor
        winCounterStay = winCounterStay + 1;
        oddsOfWinStay(index) = winCounterStay/index;
    elseif index >= 2
        oddsOfWinStay(index) = oddsOfWinStay(index - 1);
    else
        oddsOfWinStay(index) = 0;
    end
    if doorCar ~= contestantDoor && doorCar ~= hostDoor
        winCounterSwitch = winCounterSwitch + 1;
        oddsOfWinSwitch(index) = winCounterSwitch/index;
    elseif index >= 2
        oddsOfWinSwitch(index) = oddsOfWinSwitch(index - 1);
    else
        oddsOfWinSwitch(index) = 0;
    end
        
end
disp(['Odds of winning by sticking with your original choice: ', num2str(oddsOfWinStay(nSample))]);
disp(['Odds of winning by switching your choice: ', num2str(oddsOfWinSwitch(nSample))]);
plot(oddsOfWinStay, 'red');
hold on
plot(oddsOfWinSwitch, 'green');