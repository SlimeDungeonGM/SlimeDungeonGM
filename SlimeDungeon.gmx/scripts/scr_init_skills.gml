//test build
skills = global.dm_skills;
//skills = noone;

skills[0,0] = "Summon";//name
skills[0,1] = 0;//level
skills[0,2] = 0;//exp
skills[0,3] = 0;//nextexp
skills[0,4] = 0;//owned
skills[0,5] = 0;//cost

skills[1,0] = "Contract";
skills[1,1] = 0;//level
skills[1,2] = 0;//exp
skills[1,3] = 0;//nextexp
skills[1,4] = 1;//owned
skills[1,5] = 0;//cost

global.dm_skills = skills;
