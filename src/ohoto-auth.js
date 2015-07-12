var xhr = new XMLHttpRequest;

const setAuth = (ok) => {
  if (ok) {
    var displayName = ok.name || ok.instagram_name;
    document.getElementById('menu-logout').textContent = displayName;
    //document.getElementById('header-logout').textContent = displayName;
    document.getElementById('userpic').style.backgroundImage = `url(${ok.image_url})`;
    document.documentElement.setAttribute('data-logged', 'true');
  } else {
    document.documentElement.setAttribute('data-logged', 'false');
  }
};

xhr.withCredentials = true;
xhr.open('GET', 'http://api.oho.to/auth-status');

xhr.addEventListener('readystatechange', () => {
  if (xhr.readyState === xhr.DONE) {
    try {
      var json = JSON.parse(xhr.responseText);
      if (json.auth === true) {
        setAuth(json);
      } else {
        setAuth(false);
      }
    } catch (e) {
      setAuth(false);
    }
  }
});

xhr.addEventListener('error', () => {
  setAuth(false);
});

xhr.send();
