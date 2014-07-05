import QtQml 2.2
import QtQuick 2.2


Item {
	property Command choosesession: Command {
		id: choosesession
		text: "Choose session"
		tooltip: "Choose session [load it if it already exists]"

		iconName: "file-load"
		iconSource: "../icons/file-load.png"

		aliases: ["opensession", "csession", "lsession"]
		category: "Tabs"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command savesession: Command {
		id: savesession
		text: "Save session"
		tooltip: "Save current session to a file"

		iconName: "file-save"
		iconSource: "../icons/file-save.png"

		aliases: ["writesession", "wsession"]
		category: "Tabs"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command loadtabs: Command {
		id: loadtabs
		text: "Load tabs"
		tooltip: "Load tabs from a file"

		iconName: "file-load"
		iconSource: "../icons/file-load.png"

		aliases: ["opentabs", "otabs", "ltabs"]
		category: "Tabs"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command back: Command {
		id: back
		text: "Back"
		tooltip: "Return to the previous page viewed in this tab"

		iconName: "go-previous"
		iconSource: "../icons/go-previous.png"

		category: "Navigation"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command forward: Command {
		id: forward
		text: "Forward"
		tooltip: "Move forward to the next page viewed in this tab"

		iconName: "go-next"
		iconSource: "../icons/go-next.png"

		category: "Navigation"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command refresh: Command {
		id: refresh
		text: "Refresh"
		tooltip: "Refresh the current page"

		iconName: "view-refresh"
		iconSource: "../icons/view-refresh.png"

		category: "Navigation"

		onExecuted: {
			if(currentWebView) {
				currentWebView.reload()
			}
		}
	}

	property Command reload: Command {
		id: reload
		text: "&Reload"
		tooltip: "Reload the current page [skip cache]"

		iconName: "view-reload"
		iconSource: "../icons/view-reload.png"

		category: "Navigation"
		shortcut: "Ctrl+R"

		onExecuted: {
			if(currentWebView) {
				currentWebView.reload()
			}
		}
	}

	property Command stop: Command {
		id: stop
		text: "&Stop"
		tooltip: "Stop loading"

		iconName: "process-stop"
		iconSource: "../icons/process-stop.png"

		category: "Navigation"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command bookmark: Command {
		id: bookmark
		text: "Toggle bookmark"
		tooltip: "Toggle bookmark"

		iconName: "bookmarked"
		iconSource: "../icons/bookmarked.png"

		aliases: ["bmark"]
		category: "Navigation"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command page: Command {
		id: page
		text: "Page actions"
		tooltip: "Control the current page"

		iconName: "page-settings"
		iconSource: "../icons/page-settings.png"

		category: "Navigation"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command bookmarks: Command {
		id: bookmarks
		text: "Open bookmark menu"
		tooltip: "View your bookmarks"

		iconName: "bookmark-menu"
		iconSource: "../icons/bookmark-menu.png"

		aliases: ["bmarks"]
		category: "Navigation"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command home: Command {
		id: home
		text: "Home"
		tooltip: "Go to your home page"

		iconName: "go-home"
		iconSource: "../icons/go-home.png"

		category: "Navigation"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command go: Command {
		id: go
		text: "Go"
		tooltip: "Go to the given URL [defaults to the contents of the address bar]"

		iconName: "go"
		iconSource: "../icons/go.png"

		aliases: ["open"]
		category: "Navigation"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command copylink: Command {
		id: copylink
		text: "Copy URL"
		tooltip: "Copy the URL of the current page to the clipboard"

		iconName: "copy-url"
		iconSource: "../icons/copy-url.png"

		aliases: ["cl"]
		category: "Navigation"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command quit: Command {
		id: quit
		text: "&Quit"
		tooltip: "Exit the browser"

		iconName: "application-exit"
		iconSource: "../icons/application-exit.png"

		aliases: ["wqa", "exit"]
		category: "Browser"
		shortcut: "Ctrl+Q"

		onExecuted: Qt.quit()
	}

	property Command settings: Command {
		id: settings
		text: "Settings"
		tooltip: "Change the browser's settings"

		iconName: "settings"
		iconSource: "../icons/settings.png"
		checkable: true

		aliases: ["config", "preferences", "prefs"]
		category: "Browser"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command inspect: Command {
		id: inspect
		text: "Inspect Page"
		tooltip: "Show the Inspector sidebar and set it to inspect the given page"

		iconName: "view-dom-tree"
		iconSource: "../icons/view-dom-tree.png"
		checkable: true

		aliases: ["inspector"]
		category: "Browser"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command download: Command {
		id: download
		text: "Downloads"
		tooltip: "Manage downloads"

		iconName: "download-inactive"
		iconSource: "../icons/download-inactive.png"
		checkable: true

		category: "Browser"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command focusaddressbar: Command {
		id: focusaddressbar
		text: "Focus the address bar"
		tooltip: "Move the keyboard focus to the address bar"

		iconName: "browser"
		iconSource: "../icons/browser.png"

		aliases: ["fab"]
		category: "Browser"

        onExecuted: {
            addressBar.forceActiveFocus();
            addressBar.selectAll();
        }
	}

	property Command focuspage: Command {
		id: focuspage
		text: "Focus the current page"
		tooltip: "Move the keyboard focus to the current page"

		iconName: "browser"
		iconSource: "../icons/browser.png"

		aliases: ["fp"]
		category: "Browser"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command scrollup: Command {
		id: scrollup
		text: "Scroll up"
		tooltip: "Scroll the current page up"

		iconName: "scroll-up"
		iconSource: "../icons/scroll-up.png"

		aliases: ["su"]
		category: "Page"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command scrolldown: Command {
		id: scrolldown
		text: "Scroll down"
		tooltip: "Scroll the current page down"

		iconName: "scroll-down"
		iconSource: "../icons/scroll-down.png"

		aliases: ["sd"]
		category: "Page"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command scrollleft: Command {
		id: scrollleft
		text: "Scroll left"
		tooltip: "Scroll the current page left"

		iconName: "scroll-left"
		iconSource: "../icons/scroll-left.png"

		aliases: ["sl"]
		category: "Page"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command scrollright: Command {
		id: scrollright
		text: "Scroll right"
		tooltip: "Scroll the current page right"

		iconName: "scroll-right"
		iconSource: "../icons/scroll-right.png"

		aliases: ["sr"]
		category: "Page"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command scrolltotop: Command {
		id: scrolltotop
		text: "Scroll to top"
		tooltip: "Scroll to the top of the current page"

		iconName: "scroll-top"
		iconSource: "../icons/scroll-top.png"

		aliases: ["st", "stt"]
		category: "Page"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command scrolltobottom: Command {
		id: scrolltobottom
		text: "Scroll to bottom"
		tooltip: "Scroll to the bottom of the current page"

		iconName: "scroll-bottom"
		iconSource: "../icons/scroll-bottom.png"

		aliases: ["sb", "stb"]
		category: "Page"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command textsize: Command {
		id: textsize
		text: "Set text size"
		tooltip: "Set the text size multiplier for the current page"

		iconName: "zoom-original"
		iconSource: "../icons/zoom-original.png"

		aliases: ["ts", "textsize"]
		category: "Page"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command textsizeup: Command {
		id: textsizeup
		text: "Increase text size"
		tooltip: "Increase the text size multiplier for the current page"

		iconName: "zoom-in"
		iconSource: "../icons/zoom-in.png"

		aliases: ["tsu"]
		category: "Page"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command textsizedown: Command {
		id: textsizedown
		text: "Decrease text size"
		tooltip: "Decrease the text size multiplier for the current page"

		iconName: "zoom-out"
		iconSource: "../icons/zoom-out.png"

		aliases: ["tsd"]
		category: "Page"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command zoom: Command {
		id: zoom
		text: "Set zoom"
		tooltip: "Set the zoom factor for the current page"

		iconName: "zoom-original"
		iconSource: "../icons/zoom-original.png"

		aliases: ["z"]
		category: "Page"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command zoomin: Command {
		id: zoomin
		text: "Zoom in"
		tooltip: "Increase the zoom factor for the current page"

		iconName: "zoom-in"
		iconSource: "../icons/zoom-in.png"

		aliases: ["zi"]
		category: "Page"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command zoomout: Command {
		id: zoomout
		text: "Zoom out"
		tooltip: "Decrease the zoom factor for the current page"

		iconName: "zoom-out"
		iconSource: "../icons/zoom-out.png"

		aliases: ["zo"]
		category: "Page"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command opentab: Command {
		id: opentab
		text: "New tab"
		tooltip: "Create a new tab and switch to it"

		iconName: "tab-new"
		iconSource: "../icons/tab-new.png"

		aliases: ["ot", "tabopen", "to"]
		category: "Tabs"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command tab: Command {
		id: tab
		text: "Switch tab"
		tooltip: "Switch to the given tab"

		iconName: "tabs"
		iconSource: "../icons/tabs.png"

		aliases: ["buffer", "buf", "b"]
		category: "Tabs"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command lasttab: Command {
		id: lasttab
		text: "Last tab"
		tooltip: "Switch to the last tab"

		iconName: "tabs"
		iconSource: "../icons/tabs.png"

		aliases: ["lt", "tl"]
		category: "Tabs"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command nexttab: Command {
		id: nexttab
		text: "Next tab"
		tooltip: "Switch to the next tab"

		iconName: "tabs"
		iconSource: "../icons/tabs.png"

		aliases: ["nt", "tn", "bn"]
		category: "Tabs"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command previoustab: Command {
		id: previoustab
		text: "Previous tab"
		tooltip: "Switch to the next tab"

		iconName: "tabs"
		iconSource: "../icons/tabs.png"

		aliases: ["prevtab", "pt", "tp", "bp"]
		category: "Tabs"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command closetab: Command {
		id: closetab
		text: "Close tab"
		tooltip: "Close the current tab"

		iconName: "tab-close"
		iconSource: "../icons/tab-close.png"

		aliases: ["ct", "tc", "bd"]
		category: "Tabs"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command closeall: Command {
		id: closeall
		text: "Close all tabs"
		tooltip: "Close all open tabs"

		iconName: "tab-close"
		iconSource: "../icons/tab-close.png"

		aliases: ["ca", "tca"]
		category: "Tabs"

		enabled: false
		//TODO: Implement onExecuted!
	}

	property Command clearcookies: Command {
		id: clearcookies
		text: "Clear cookies"
		tooltip: "Clear cookies for the given domain, or all cookies if no domain given"

		iconName: "settings-cookies"
		iconSource: "../icons/settings-cookies.png"

		aliases: ["cc"]
		category: "Tabs"

		enabled: false
		//TODO: Implement onExecuted!
	}

}
