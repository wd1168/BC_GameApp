const client_id = "0805466082cde7109541";
const client_secret = "3ea462e3e127bb0bda551c4d8106b9f7c0947419";
let output = "";

const fetchUsers = async () => {
  const api_call = await fetch(
    "https://api.github.com/repos/wd1168/BC_GameApp/contents/web/rules/game1_rules.json?client_id=${client_id}&client_secret=${client_secret}"
  );

  const data = await api_call.json();
  return { data };
};

const showData = () => {
  fetchUsers().then(res => {
    console.log(res);

    let game_rules = JSON.parse(atob(res.data.content));

    for (rule in game_rules) {
      document.getElementById("rules").innerHTML +=
        "<strong>" +
        rule +
        "</strong>" +
        "<br>" +
        game_rules[rule] +
        "<br> <br>";
    }
  });
};

showData();
