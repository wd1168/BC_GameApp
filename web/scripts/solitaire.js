const client_id = "0805466082cde7109541";
const client_secret = "3ea462e3e127bb0bda551c4d8106b9f7c0947419";

const fetchUsers = async () => {
  const api_call = await fetch(
    "https://api.github.com/repos/wd1168/BC_GameApp/contents/web/rule_files/solitaire.json?client_id=${client_id}&client_secret=${client_secret}"
  );

  const data = await api_call.json();
  return { data };
};

const showData = () => {
  fetchUsers().then(res => {
    console.log(JSON.parse(atob(res.data.content)));

    let object = JSON.parse(atob(res.data.content));

    for (item in object) {
      if (item === "rules") {
        for (let i = 0; i <= object[item].length; i++) {
          document.getElementById("rules").innerHTML +=
            "<strong>" +
            object[item][i].category +
            "</strong>: " +
            "<br>" +
            object[item][i].text +
            "<br> <br>";
        }
      } else {
        document.getElementById("rules").innerHTML +=
          "<strong>" + item + "</strong>: " + object[item] + "<br> <br>";
      }
    }
  });
};

showData();
