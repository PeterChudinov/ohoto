var xhr = new XMLHttpRequest;

const setAuth = (ok) => {
  document.documentElement.setAttribute('data-logged', String(ok));
};

xhr.withCredentials = true;
xhr.open('GET', 'http://api.oho.to/auth-status');

xhr.addEventListener('readystatechange', () => {
  if (xhr.readyState === xhr.DONE) {
    try {
      var json = JSON.parse(xhr.responseText);
      setAuth(json.auth === true);
    } catch (e) {
      setAuth(false);
    }
  }
});

xhr.addEventListener('error', () => {
  setAuth(false);
});

xhr.send();
