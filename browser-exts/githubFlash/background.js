const CSS = ".flash.flash-warn { display: none; }";
const TITLE_APPLY = "Apply CSS";
const TITLE_REMOVE = "Remove CSS";
const APPLY_ON = "https://github.com/iluvgirlswithglasses";

/*
Toggle CSS: based on the current title, insert or remove the CSS.
Update the page action's title and icon to reflect its state.
*/
function toggleCSS(tab) {

	function gotTitle(title) {
		if (title === TITLE_APPLY) {
			browser.pageAction.setIcon({tabId: tab.id, path: "icons/on.svg"});
			browser.pageAction.setTitle({tabId: tab.id, title: TITLE_REMOVE});
			browser.tabs.insertCSS({code: CSS});
		} else {
			browser.pageAction.setIcon({tabId: tab.id, path: "icons/off.svg"});
			browser.pageAction.setTitle({tabId: tab.id, title: TITLE_APPLY});
			browser.tabs.removeCSS({code: CSS});
		}
	}

	let gettingTitle = browser.pageAction.getTitle({tabId: tab.id});
	gettingTitle.then(gotTitle);
}

/*
Initialize the page action: set icon and title, then show.
Only operates on tabs whose URL's protocol is applicable.
*/
function initializePageAction(tab) {
	if (tab.url.includes(APPLY_ON)) {
		browser.pageAction.setIcon({tabId: tab.id, path: "icons/off.svg"});
		browser.pageAction.setTitle({tabId: tab.id, title: TITLE_APPLY});
	browser.pageAction.show(tab.id);
	}
}

/*
When first loaded, initialize the page action for all tabs.
*/
let gettingAllTabs = browser.tabs.query({});
gettingAllTabs.then((tabs) => {
	for (let tab of tabs) {
		initializePageAction(tab);
	}
});

/*
Each time a tab is updated, reset the page action for that tab.
*/
browser.tabs.onUpdated.addListener((id, changeInfo, tab) => {
	initializePageAction(tab);
});

/*
Toggle CSS when the page action is clicked.
*/
browser.pageAction.onClicked.addListener(toggleCSS);
