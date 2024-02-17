// personal settings
// user_pref("browser.download.dir", "/home/cody/downloads");
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("extensions.webextensions.restrictedDomains", ""); // allow extensions on all domains
user_pref("browser.bookmarks.addedImportButton", false);
user_pref("browser.toolbars.bookmarks.visibility", "never");
user_pref("pdfjs.viewerCssTheme", 2); // set pdf ui to dark
user_pref("extensions.unifiedExtensions.enabled", false); // disable new "extensions" toolbar button

// ?
user_pref("privacy.resistFingerprinting.block_mozAddonManager", false); // true to use vimium everywhere?

// arkenfox 09-01-2023 adaptation
// license: MIT: https://github.com/arkenfox/user.js/blob/master/LICENSE.txt
user_pref("_user.js.parrot", "START: Oh yes, the Norwegian Blue... what's wrong with it?");
user_pref("browser.aboutConfig.showWarning", false);

user_pref("_user.js.parrot", "0100 syntax error: the parrot's dead!");
user_pref("browser.startup.page", 3); // 0=blank, 1=home, 2=last visited, 3=previous session
user_pref("browser.startup.homepage", "about:home");
user_pref("browser.newtabpage.enabled", true); // true=home, false=blank
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);
user_pref("browser.newtabpage.activity-stream.default.sites", "");

user_pref("_user.js.parrot", "0200 syntax error: the parrot's definitely deceased!");
user_pref("geo.provider.network.url", "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%"); // use mozilla over google
user_pref("geo.provider.network.logging.enabled", false);
user_pref("geo.provider.ms-windows-location", false);
user_pref("geo.provider.use_corelocation", false);
user_pref("geo.provider.use_gpsd", false);
user_pref("geo.provider.use_geoclue", false);
user_pref("intl.accept_languages", "en-US");
user_pref("javascript.use_us_english_locale", true);

user_pref("_user.js.parrot", "0300 syntax error: the parrot's not pinin' for the fjords!");
user_pref("extensions.getAddons.showPane", false);
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);
user_pref("browser.discovery.enabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.server", "data:,");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);
user_pref("toolkit.coverage.endpoint.base", "");
user_pref("browser.ping-centre.telemetry", false);
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");
user_pref("breakpad.reportURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false);
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false);
user_pref("captivedetect.canonicalURL", "");
user_pref("network.captive-portal-service.enabled", false);
user_pref("network.connectivity-service.enabled", false);

user_pref("_user.js.parrot", "0400 syntax error: the parrot's passed on!");
user_pref("browser.safebrowsing.downloads.remote.enabled", false);

user_pref("_user.js.parrot", "0600 syntax error: the parrot's no more!");
user_pref("network.prefetch-next", false);
user_pref("network.dns.disablePrefetch", true);
user_pref("network.predictor.enabled", false);
user_pref("network.predictor.enable-prefetch", false);
user_pref("network.http.speculative-parallel-limit", 0);
user_pref("browser.places.speculativeConnect.enabled", false);

user_pref("_user.js.parrot", "0700 syntax error: the parrot's given up the ghost!");
user_pref("network.dns.disableIPv6", false); // set to true to harden
user_pref("network.proxy.socks_remote_dns", true);
user_pref("network.file.disable_unc_paths", true);
user_pref("network.gio.supported-protocols", "");

user_pref("_user.js.parrot", "0800 syntax error: the parrot's ceased to be!");
user_pref("keyword.enabled", true); // enable searching in URL bar
user_pref("browser.fixup.alternate.enabled", false);
user_pref("browser.search.suggest.enabled", true); // enable search suggestions
user_pref("browser.urlbar.suggest.searches", true); // enable search suggestions
user_pref("browser.urlbar.speculativeConnect.enabled", false);
user_pref("browser.urlbar.dnsResolveSingleWordsAfterSearch", 0);
user_pref("browser.urlbar.suggest.quicksuggest.nonsponsored", false);
user_pref("browser.urlbar.suggest.quicksuggest.sponsored", false);
user_pref("browser.formfill.enable", false);

user_pref("_user.js.parrot", "0900 syntax error: the parrot's expired!");
user_pref("signon.autofillForms", false);
user_pref("signon.formlessCapture.enabled", false);
user_pref("network.auth.subresource-http-auth-allow", 1);

user_pref("_user.js.parrot", "1000 syntax error: the parrot's gone to meet 'is maker!");
user_pref("browser.cache.disk.enable", true); // enable disk cache
user_pref("browser.privatebrowsing.forceMediaMemoryCache", true);
user_pref("media.memory_cache_max_size", 65536);
user_pref("browser.sessionstore.privacy_level", 0); // enable restore session
user_pref("toolkit.winRegisterApplicationRestart", false);
user_pref("browser.shell.shortcutFavicons", false);

user_pref("_user.js.parrot", "1200 syntax error: the parrot's a stiff!");
user_pref("security.ssl.require_safe_negotiation", true);
user_pref("security.tls.enable_0rtt_data", false);
user_pref("security.OCSP.enabled", 1);
user_pref("security.OCSP.require", true);
user_pref("security.family_safety.mode", 0);
user_pref("security.cert_pinning.enforcement_level", 2);
user_pref("security.remote_settings.crlite_filters.enabled", true);
user_pref("security.pki.crlite_mode", 2);
user_pref("dom.security.https_only_mode", true);
user_pref("dom.security.https_only_mode_send_http_background_request", false);
user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true);
user_pref("browser.xul.error_pages.expert_bad_cert", true);

user_pref("_user.js.parrot", "1600 syntax error: the parrot rests in peace!");
user_pref("network.http.referer.XOriginPolicy", 0); // set to 2 to harden, 0 for donmai/pixiv
// 0=send full URI (default), 1=scheme+host+port+path, 2=scheme+host+port
user_pref("network.http.referer.XOriginTrimmingPolicy", 1);

user_pref("_user.js.parrot", "1700 syntax error: the parrot's bit the dust!");
user_pref("privacy.userContext.enabled", true);
user_pref("privacy.userContext.ui.enabled", true);

user_pref("_user.js.parrot", "2000 syntax error: the parrot's snuffed it!");
user_pref("media.peerconnection.ice.proxy_only_if_behind_proxy", true);
user_pref("media.peerconnection.ice.default_address_only", true);
user_pref("media.eme.enabled", false);

user_pref("_user.js.parrot", "2400 syntax error: the parrot's kicked the bucket!");
user_pref("dom.disable_window_move_resize", true);
user_pref("dom.popup_allowed_events", "click dblclick mousedown pointerdown");

user_pref("_user.js.parrot", "2600 syntax error: the parrot's run down the curtain!");
user_pref("accessibility.force_disabled", 1);
user_pref("browser.helperApps.deleteTempFileOnExit", true);
user_pref("browser.pagethumbnails.capturing_disabled", true);
user_pref("browser.uitour.enabled", false);
user_pref("devtools.debugger.remote-enabled", false);
user_pref("middlemouse.contentLoadURL", false);
user_pref("permissions.manager.defaultsUrl", ""); // TODO: VIMIUM?
user_pref("webchannel.allowObject.urlWhitelist", "");
user_pref("network.IDN_show_punycode", true);
user_pref("pdfjs.disabled", false); // set to true to harden
user_pref("pdfjs.enableScripting", false);
user_pref("network.protocol-handler.external.ms-windows-store", false);
user_pref("permissions.delegation.enabled", false);
user_pref("browser.download.useDownloadDir", true); // enable download dir
user_pref("browser.download.alwaysOpenPanel", false);
user_pref("browser.download.manager.addToRecentDocs", false);
user_pref("browser.download.always_ask_before_handling_new_types", true);
user_pref("extensions.enabledScopes", 1);
user_pref("extensions.autoDisableScopes", 15);
user_pref("extensions.postDownloadThirdPartyPrompt", false);

user_pref("_user.js.parrot", "2700 syntax error: the parrot's joined the bleedin' choir invisible!");
user_pref("browser.contentblocking.category", "strict");
user_pref("privacy.partition.serviceWorkers", true);
user_pref("privacy.partition.always_partition_third_party_non_cookie_storage", true);
user_pref("privacy.partition.always_partition_third_party_non_cookie_storage.exempt_sessionstorage", false);

// breaks my shit
// user_pref("_user.js.parrot", "2800 syntax error: the parrot's bleedin' demised!");
// user_pref("privacy.sanitize.sanitizeOnShutdown", true);
// user_pref("privacy.clearOnShutdown.cache", true);
// user_pref("privacy.clearOnShutdown.downloads", true); // [DEFAULT: true]
// user_pref("privacy.clearOnShutdown.formdata", true);  // [DEFAULT: true]
// user_pref("privacy.clearOnShutdown.history", true);   // [DEFAULT: true]
// user_pref("privacy.clearOnShutdown.sessions", true);  // [DEFAULT: true]
// user_pref("privacy.clearOnShutdown.cookies", true); // Cookies
// user_pref("privacy.clearOnShutdown.offlineApps", true); // Site Data
// user_pref("privacy.cpd.cache", true);    // [DEFAULT: true]
// user_pref("privacy.cpd.formdata", true); // [DEFAULT: true]
// user_pref("privacy.cpd.history", true);  // [DEFAULT: true]
// user_pref("privacy.cpd.sessions", true); // [DEFAULT: true]
// user_pref("privacy.cpd.offlineApps", false); // [DEFAULT: false]
// user_pref("privacy.cpd.cookies", false);
// user_pref("privacy.sanitize.timeSpan", 0);

// user_pref("_user.js.parrot", "4500 syntax error: the parrot's popped 'is clogs");
user_pref("privacy.resistFingerprinting", true);
// user_pref("privacy.resistFingerprinting.letterboxing", true);
// user_pref("browser.startup.blankWindow", false);
// user_pref("browser.display.use_system_colors", false);
// user_pref("widget.non-native-theme.enabled", true);
// user_pref("browser.link.open_newwindow", 3);
// user_pref("browser.link.open_newwindow.restriction", 0);
user_pref("webgl.disabled", true);

user_pref("_user.js.parrot", "6000 syntax error: the parrot's 'istory!");
user_pref("extensions.blocklist.enabled", true);
user_pref("network.http.referer.spoofSource", false);
user_pref("security.dialog_enable_delay", 1000);
user_pref("privacy.firstparty.isolate", true);
user_pref("extensions.webcompat.enable_shims", true);
user_pref("security.tls.version.enable-deprecated", false);
user_pref("extensions.webcompat-reporter.enabled", false);

user_pref("_user.js.parrot", "SUCCESS: No no he's not dead, he's, he's restin'!");

// other hardening

//https://privacyinternational.org/guide-step/4330/firefox-adjusting-settings-enhance-your-online-privacy
user_pref("media.navigator.enabled", false);
user_pref("privacy.firstparty.isolate", true);
user_pref("geo.enabled", false);
user_pref("media.peerconnection.enabled", false);
user_pref("dom.event.clipboardevents.enabled", false);
user_pref("dom.battery.enabled", false);
user_pref("extensions.pocket.enabled", false);

// https://theprivacyguide1.github.io/about_config.html
user_pref("browser.cache.offline.enable", false);
user_pref("browser.sessionstore.max_tabs_undo", 3);
user_pref("extensions.blocklist.url", "https://blocklists.settings.services.mozilla.com/v1/blocklist/3/%20/%20/");
user_pref("dom.event.contextmenu.enabled", false);
user_pref("geo.wifi.uri", blank);
user_pref("browser.search.geoip.url", blank);
user_pref("browser.aboutHomeSnippets.updateUrL", blank);
user_pref("browser.startup.homepage_override.mstone", blank);
user_pref("browser.startup.homepage_override.buildID", blank);
user_pref("startup.homepage_welcome_url", blank);
user_pref("startup.homepage_welcome_url.additional", blank);
user_pref("startup.homepage_override_url", blank);
user_pref("toolkit.telemetry.cachedClientID", blank);
user_pref("browser.send_pings.require_same_host", true);
user_pref("network.dnsCacheEntries", 64);
user_pref("places.history.enabled", true); // set to false to harden
user_pref("browser.cache.disk_cache_ssl", false);
user_pref("browser.cache.memory.enable", false);
user_pref("extensions.pocket.site", blank);
user_pref("extensions.pocket.oAuthConsumerKey", blank);
user_pref("extensions.pocket.api", blank);
user_pref("toolkit.telemetry.server", blank);
user_pref("dom.ipc.plugins.flash.subprocess.crashreporter.enabled", false);
user_pref("toolkit.crashreporter.infoURL", blank);
user_pref("datareporting.healthreport.infoURL", blank);
user_pref("datareporting.policy.firstRunURL", blank);
user_pref("privacy.spoof_english", false);
user_pref("gfx.font_rendering.graphite.enabled", false);
user_pref("network.jar.block-remote-files", true);
user_pref("javascript.options.ion", false);
user_pref("javascript.options.native_regexp", false);
user_pref("javascript.options.baselinejit", true); // set to false to harden
user_pref("dom.webaudio.enabled", false);
user_pref("media.webaudio.enabled", false);
user_pref("gfx.font_rendering.opentype_svg.enabled", false);
user_pref("svg.disabled", false); // set to true to harden, bit more extreme in terms of ux
