// Simple admin auth and localStorage helpers
(function () {
  const ADMIN_USERNAME = 'admin';
  const ADMIN_PASSWORD = 'petshop@123';

  const storage = window.localStorage;

  function readArray(key) {
    try {
      const value = storage.getItem(key);
      return value ? JSON.parse(value) : [];
    } catch (e) {
      console.error('Failed reading key', key, e);
      return [];
    }
  }

  function writeArray(key, arr) {
    storage.setItem(key, JSON.stringify(arr));
  }

  function generateId(prefix) {
    return `${prefix}_${Date.now()}_${Math.random().toString(36).slice(2, 8)}`;
  }

  function ensureDefaults() {
    const defaults = ['users', 'contacts', 'categories', 'products', 'carts', 'admins'];
    defaults.forEach((k) => {
      if (!storage.getItem(k)) writeArray(k, []);
    });
  }

  const AdminAuth = {
    login(username, password) {
      if (username === ADMIN_USERNAME && password === ADMIN_PASSWORD) {
        storage.setItem('admin_logged_in', '1');
        return true;
      }
      const admins = readArray('admins');
      const match = admins.find((a) => a.username === username && a.password === password);
      if (match) {
        storage.setItem('admin_logged_in', '1');
        return true;
      }
      return false;
    },
    register(adminData) {
      const { username, password } = adminData || {};
      if (!username || !password) return { ok: false, message: 'Username and password are required' };
      const admins = readArray('admins');
      if (admins.some((a) => a.username === username)) {
        return { ok: false, message: 'Username already exists' };
      }
      const toSave = {
        id: generateId('admin'),
        createdAt: Date.now(),
        ...adminData,
      };
      admins.push(toSave);
      writeArray('admins', admins);
      return { ok: true };
    },
    logout() {
      storage.removeItem('admin_logged_in');
      window.location.href = 'login.html';
    },
    guard() {
      const requireAuth = document.body.getAttribute('data-require-auth') === 'true';
      if (!requireAuth) return;
      const ok = storage.getItem('admin_logged_in') === '1';
      if (!ok) {
        window.location.href = 'login.html';
      }
    }
  };

  const AdminStorage = {
    getAll(key) { return readArray(key); },
    saveAll(key, arr) { writeArray(key, arr); },
    add(key, item) {
      const arr = readArray(key);
      arr.push(item);
      writeArray(key, arr);
      return item;
    },
    updateById(key, id, updater) {
      const arr = readArray(key);
      const idx = arr.findIndex((x) => x.id === id);
      if (idx === -1) return false;
      arr[idx] = { ...arr[idx], ...updater };
      writeArray(key, arr);
      return true;
    },
    removeById(key, id) {
      const arr = readArray(key).filter((x) => x.id !== id);
      writeArray(key, arr);
    }
  };

  // Expose globally
  window.AdminAuth = AdminAuth;
  window.AdminStorage = AdminStorage;
  window.AdminUtils = { generateId };

  // Page boot
  document.addEventListener('DOMContentLoaded', () => {
    ensureDefaults();
    AdminAuth.guard();
    const logoutBtn = document.getElementById('logoutBtn');
    if (logoutBtn) logoutBtn.addEventListener('click', AdminAuth.logout);
  });
})();


