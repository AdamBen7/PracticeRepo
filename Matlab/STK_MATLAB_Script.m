%%

%TASK 2

% 1. Create a new scenario.

scenario = root.Children.New('eScenario','MATLAB_Starter');

% 2. Set the analytical time period.

scenario.SetTimePeriod('Today','+24hr')

% 3. Reset the animation time.

root.ExecuteCommand('Animate * Reset')


%%

%TASK 3

%1. Add a target object to the scenario.

target = scenario.Children.New('eTarget','GroundTarget');

%2. Move the Target object to a desired location.

target.Position.AssignGeodetic(50,-100,0)

%3. Add a Satellite object to the scenario.

satellite = scenario.Children.New('eSatellite','LeoSat');

%4. Propagate the Satellite object's orbit.

root.ExecuteCommand(['SetState */Satellite/LeoSat Classical TwoBody "',scenario.StartTime,'" "',scenario.StopTime,'" 60 ICRF "',scenario.StartTime,'" 7200000.0 0.0 90 0.0 0.0 0.0'])

%%

%TASK 4

% 1. Retrieve and view the access data in MATLAB. 

%Get access by STK obect
access = satellite.GetAccessToObject(target);

%compute access
access.ComputeAccess()

accessDP = access.DataProviders.Item('Access Data').Exec(scenario.StartTime,scenario.StopTime);
accessStartTimes = accessDP.DataSets.GetDataSetByName('Start Time').GetValues
accessStopTimes = accessDP.DataSets.GetDataSetByName('Stop Time').GetValues

%% 

%TASK 5

% 2. Retrieve and view the altitude of the satellite during an access interval.

satelliteDP = satellite.DataProviders.Item('LLA State').Group.Item('Fixed').ExecElements(accessStartTimes{1},accessStopTimes{1},60,{'Time';'Alt'});
satellitealtitude = satelliteDP.DataSets.GetDataSetByName('Alt').GetValues
