alias PieHub.Repo
alias PieHub.RaspiUnit.Units

Repo.insert! %Units {
  name: "enver",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "Raspberry Pi 4 Model B Rev 1.2",
  ip_address1: "192.168.1.190",
  ip_address2: "192.168.168.190",
  total_storage: "59",
  used_storage: "20",
  available_storage: "37",
  description: "working 1st pi 4 with node"
}

Repo.insert! %Units {
  name: "nefis",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "Raspberry Pi 3 Model B Plus Rev 1.2",
  ip_address1: "192.168.168.29",
  total_storage: "30",
  used_storage: "11",
  available_storage: "18",
  description: "upstairs taking pictures for the backyard"
}

Repo.insert! %Units {
 name: "isil",
 powered_on: true,
 last_check: DateTime.truncate(DateTime.utc_now(), :second),
 model_type: "Raspberry Pi 3 Model B Plus Rev 1.2",
 ip_address1: "192.168.168.28",
 total_storage: "15",
 used_storage: "3.4",
 available_storage: "11",
 description: "upstairs taking pictures for the frontyard"
}

Repo.insert! %Units {
  name: "dora",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "Raspberry Pi 3 Model B Plus Rev 1.3",
  ip_address1: "192.168.1.185",
  ip_address2: "192.168.168.185",
  total_storage: "59",
  used_storage: "15",
  available_storage: "43",
  description: "pi3 on the standing desk"
}


Repo.insert! %Units {
  name: "lia",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "Raspberry Pi 2 Model B Rev 1.1",
  ip_address1: "192.168.168.36",
  total_storage: "29",
  used_storage: "4",
  available_storage: "24",
  description: "pi 2"
}

Repo.insert! %Units {
  name: "jade",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "Raspberry Pi Model B Plus Rev 1.2",
  ip_address1: "192.168.168.35",
  total_storage: "59",
  used_storage: "15",
  available_storage: "43",
  description: "top of workbench"
}

Repo.insert! %Units {
  name: "lyle",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "Raspberry Pi 3 Model A Plus Rev 1.0",
  ip_address1: "192.168.168.67",
  total_storage: "15",
  used_storage: "3.6",
  available_storage: "11",
  description: "on standing desk"
}

Repo.insert! %Units {
  name: "hatchery",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "Raspberry Pi 3 Model B Rev 1.2",
  ip_address1: "192.168.168.38",
  total_storage: "30",
  used_storage: "13",
  available_storage: "16",
  description: "has camera taking pictures in the office"
}

Repo.insert! %Units {
  name: "rowena",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "Raspberry Pi 3 Model A Plus Rev 1.0",
  ip_address1: "192.168.168.37",
  total_storage: "15",
  used_storage: "12",
  available_storage: "2.3",
  description: "has camera taking pictures in the office"
}

Repo.insert! %Units {
  name: "basementecho",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "Raspberry Pi 3 Model B Rev 1.2",
  ip_address1: "192.168.168.39",
  total_storage: "15",
  used_storage: "5.5",
  available_storage: "8.2",
  description: "does not do much"
}

Repo.insert! %Units {
  name: "ezzy",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "Raspberry Pi Model B Rev 2",
  ip_address1: "192.168.1.188",
  total_storage: "7",
  used_storage: "5.8",
  available_storage: "0.8",
  description: "second ever pi acquired"
}

Repo.insert! %Units {
  name: "naya",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "aspberry Pi Model B Rev 2",
  ip_address1: "192.168.1.189",
  total_storage: "7",
  used_storage: "6.4",
  available_storage: "0.3",
  description: "first pi acquired"
}

Repo.insert! %Units {
  name: "guzide",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "Raspberry Pi 3 Model B Rev 1.",
  ip_address1: "192.168.168.34",
  total_storage: "29",
  used_storage: "3.3",
  available_storage: "25",
  description: "does not do much yet"
}

Repo.insert! %Units {
  name: "vedat",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "Raspberry Pi 4 Model B Rev 1.4",
  ip_address1: "192.168.1.176",
  ip_address2: "192.168.168.176",
  total_storage: "118",
  used_storage: "13",
  available_storage: "100",
  description: "runs Ubuntu 20.04 LTS"
}

Repo.insert! %Units {
  name: "adil",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "Raspberry Pi 3 Model B Rev 1.2",
  ip_address1: "192.168.168.33",
  total_storage: "29",
  used_storage: "3.3",
  available_storage: "25",
  description: "does not do much yet"
}

Repo.insert! %Units {
  name: "bee4",
  powered_on: true,
  last_check: DateTime.truncate(DateTime.utc_now(), :second),
  model_type: "Raspberry Pi Zero W Rev 1.1",
  ip_address1: "192.168.168.189",
  total_storage: "30",
  used_storage: "12",
  available_storage: "17",
  description: "temperature humidity"
}
