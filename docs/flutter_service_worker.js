'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "2b0c8ca59a33f7e7439980a784ed66bb",
"index.html": "452d0ce9828a89cd016b499bf2c42424",
"/": "452d0ce9828a89cd016b499bf2c42424",
"main.dart.js": "d35103c963dbe521b9e51f80b362e1c1",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "9c21c9ad288cd124056d633d45ef47e1",
"assets/AssetManifest.json": "f078ae10271124c70952f5244613c65a",
"assets/NOTICES": "df3c46c2153b2c3e4c115df0f8a3bfc7",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "b453a1b3d3d2813d35383c5fa1f12756",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin": "ae89f72b394b70628c0f69c4de0cfc59",
"assets/fonts/MaterialIcons-Regular.otf": "1f33787bde4fbcd8908e00ac21df673f",
"assets/assets/ic_java.png": "83fff8e11fb43f06c7b1de2be2b88ef1",
"assets/assets/portfolio_cnn.png": "25a11a9411936ac2007514cf27ee51da",
"assets/assets/portfolio_stonks.png": "998c03e989517e3b9c9b3f546d25f703",
"assets/assets/ic_kotlin.png": "da3e5cb38f04da503316f5324ab27ba8",
"assets/assets/ic_linkedin.png": "e565d2c83657c7fa9377a51a87296932",
"assets/assets/portfolio_haibunda.png": "7813e0eb641e7ec3a7e77adfdfa31da4",
"assets/assets/portfolio_insertlive.png": "390ed188574362ce09dc3e214ab3f452",
"assets/assets/portfolio_cnbc.png": "cc598eee94062fa713fcf10604319856",
"assets/assets/ic_twitter.png": "5cb7b1bacccb7268b4028f0bddfa0631",
"assets/assets/ic_github_big.png": "522732a6371ccd541b602377859486ca",
"assets/assets/ic_playstore.png": "faa2f0ae396aff881685020aa8fb6cd7",
"assets/assets/ic_develop.png": "2520dd83637270d92efd94e4b743e661",
"assets/assets/ic_maintain.png": "016e0f224ebc7108ceffd226214cb7cd",
"assets/assets/ic_playstore_big.png": "1e91d02cf5a902f38f2923c006d79281",
"assets/assets/ic_instagram.png": "4e3556d23c1f6eb45df62575b9b87fc2",
"assets/assets/ic_github.png": "0ce27f25b2c83db6119484dceefb55a4",
"assets/assets/ic_profile_small.jpeg": "28156d6333b29eea4aac6fc8c37fdba7",
"assets/assets/portfolio_detikcom.png": "cbd3373f7cf8e8889825098e905c7690",
"assets/assets/portfolio_vision.png": "a66635c0a31c919e65ba7dd1e8360644",
"assets/assets/ic_android.png": "0d1dd7d88e1764817ea2f4ee637485dc",
"assets/assets/ic_barricade.png": "4b14ee1af4b6bd3f862d312e0923929d",
"assets/assets/ic_design.png": "fddda3b308782dc63dcb20a5e944f0a5",
"assets/assets/ic_firebase.png": "4643d00cd52f328b4baca40df8249c34",
"assets/assets/ic_flutter.png": "4e54c2652bea3fb2de271201c2345a4e",
"assets/assets/ic_ios.png": "424c06d35e80d75c4e8430edf6eaa0d0",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
