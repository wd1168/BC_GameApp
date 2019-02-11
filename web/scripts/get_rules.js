const client_id = "0805466082cde7109541";
const client_secret = "3ea462e3e127bb0bda551c4d8106b9f7c0947419";
const fetchUsers = async () => {
  const api_call = await fetch(
    "https://api.github.com/repos/em1404/BC_GameApp/contents/rules/ipsum_game.txt?client_id=${client_id}&client_secret=${client_secret}"
  );

  const data = await api_call.json();
  return { data };
};

const showData = () => {
  fetchUsers().then(res => {
    console.log(res);

    let array = window.atob(res.data.content);
    let line = array.split("\n");
    document.getElementById("user").innerHTML = `<div><p>${line[1]} </p></div>`;
  });
};

showData();
